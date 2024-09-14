# server.rb

require 'sinatra'
require 'sinatra/activerecord'

enable :sessions

require './models/user'
require './models/planet'
require './models/level'
require './models/question'
require './models/answer'
require './models/questionUser'

set :database_file, './config/database.yml'
set :public_folder, 'assets'

class App < Sinatra::Application

  get '/' do
    erb :menu
  end

  post '/' do
    erb :menu
  end

  get '/menu' do
    erb :menu
  end

  post '/menu' do
    erb :menu
  end

  get '/login' do
    @userLoginExist = true
    @passLoginCorrect = true
    erb :login
  end

  post '/login' do
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)
    if user == nil
      # user not found
      @error = "User not found."
      @userLoginExist = false
      erb :login
    else
      @userLoginExist = true
      if user.authenticates(password)
        session[:user_id] = user.id
        session[:score_user] = user.score
        redirect '/mainMenu'
      else
        # failed authentication
        @error = "Incorrect password."
        @passLoginCorrect = false
        erb :login
      end
    end
  end

  get '/register' do
    @passwordDist = false
    @userOc = false
    erb :register
  end

  post '/register' do
    new_username = params[:username]
    new_password = params[:password]
    new_password_repeat = params[:password_rep]

    if new_password != new_password_repeat
      # passwords don't match
      @error = "Passwords don't match."
      @passwordDist = true
      erb :register
    else
      aut = User.find_by(username: new_username)
      @passwordDist = false
      if aut
        # username already taken
        puts "Username already taken."
        @userOc = true
        erb :register
      else
        user = User.new
        user.username = new_username
        user.password = new_password
        user.score = 0
        user.see_correct = false
        user.save
        redirect '/login'
      end
    end
  end

  get '/solarSystem' do
    erb :solarSystem
  end

  post '/solarSystem' do
    if params[:back]
      redirect '/mainMenu'
    end
    session[:planet] = params[:planet]
    planet = session[:planet]
    PLANET_ID = Planet.find_by(name: planet).id
    redirect '/planetLevels'
  end

  get '/learn' do
    erb :learn
  end

  post '/learn' do
    erb :learn
  end

  get '/planetLevels' do
    @planet = session[:planet]
    erb :planetLevels
  end

  post '/planetLevels' do
    if params[:back]
      redirect '/solarSystem'
    end
    your_level = params[:level].to_i
    session[:first_level] = true # first time playing
    session[:level_selected] = your_level # selected level
    redirect '/planetLevelQuiz'
  end

  get '/planetLevelQuiz' do
    if session[:first_level] == true # if the user it's playing the first level
      level_selected = session[:level_selected]
      level_n = Level.find_by(planet_id: PLANET_ID, number: level_selected)

      if level_n.nil?
        halt 404, "Level not found."
      end

      @questions = level_n.questions.pluck(:id)

      if @questions.empty?
        halt 404, "No questions found for this level."
      end

      @current_question = @questions.shift # takes the first question of level 1
      session[:questions] = @questions # save all questions in the session
      session[:current_question] = @current_question  # save the current question in the session

      session[:first_level] = false
    else # already have all the questions saved, just take the next one
      @questions = session[:questions]
      @current_question = @questions.shift
      session[:questions] = @questions
      session[:current_question] = @current_question
    end
    erb :planetLevelQuiz

  end

  post '/planetLevelQuiz' do
    if params[:back]
      redirect '/planetLevels'
    end
    session[:your_answer] = params[:button].to_i
    u = session[:current_question]

    @quest = Question.find_by(id: u)
    @selected_answer = Answer.find_by(id: session[:your_answer])

    redirect '/responseQuiz'
  end

  get '/responseQuiz' do
    erb :responseQuiz
  end

  post '/responseQuiz' do
    redirect '/planetLevelQuiz'
  end

  get '/mainMenu' do
    erb :mainMenu
  end

  post '/mainMenu' do
    if params[:logout]
      user = User.find_by(id: session[:user_id])
      user.save
      session.clear
      redirect '/menu'
    end

    if params[:see_correct]
      user = User.find_by(id: session[:user_id])
      if user.see_correct
        user.see_correct = false
      else
        user.see_correct = true
      end
      user.save
      redirect '/mainMenu'
    end

    if params[:solarSystem]
      redirect '/solarSystem'
    end

    if params[:ranking]
      redirect '/ranking'
    end

    if params[:timeTrialRanking]
      redirect '/timeTrialRanking'
    end

    if params[:learn]
      redirect '/learn'
    end

    if params[:timeTrial]
      redirect '/timeTrial'
    end
  end

  get '/ranking' do
    @users = User.order(score: :desc).limit(10)
    erb :ranking
  end

  post '/ranking' do
    if params[:back]
      redirect '/mainMenu'
    end
  end

  get '/timeTrialRanking' do
    @users = User.order(score_time_trial: :desc).limit(10)
    erb :timeTrialRanking
  end

  post '/timeTrialRanking' do
    if params[:back]
      redirect '/mainMenu'
    end
  end

  get '/timeTrial' do
    erb :timeTrial
  end

  post '/timeTrial' do
    if params[:back]
      redirect '/mainMenu'
    end
  end
end
