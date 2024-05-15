# server.rb

require 'sinatra'
require 'sinatra/activerecord'

  enable :sessions

require './models/user'
require './models/planet'
require './models/level'
require './models/question'
require './models/answer'

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
    erb :login
  end

  post '/login' do
    username = params[:username]
    pswd = params[:password]

    user = User.find_by(username: username)
    if user == nil
      # Usuario no encontrado
      @error = "Usuario no encontrado."
      erb :login
    else
      if user.authenticates(pswd)
        session[:user_id] = user.id
        redirect '/solarSystem'
      else
        # Autenticación fallida
        @error = "Contraseña incorrecta."
        erb :login
      end
    end
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    usernameNew = params[:username]
    passwordNew = params[:password]
    passwordRepeat = params[:passwordRep]

    if passwordNew != passwordRepeat
      # Las contraseñas no coinciden
      @error = "Las contraseñas no coinciden."
      erb :register
    else
      aut = User.find_by(username: usernameNew)
      if aut
        # Nombre de usuario ya tomado
        puts "Nombre de usuario ya está en uso."
        erb :register
      else
        user = User.new
        user.username = usernameNew
        user.password = passwordNew
        user.score = 0
        user.actual_level = 1
        user.save

        redirect '/login'
      end
    end
  end

  get '/solarSystem' do
    erb :solarSystem
  end

  post '/solarSystem' do
    planet = params[:planet]
    if planet == "Earth"
      redirect '/earthLevels'
    end
  end

  get '/earthLevels' do
    erb :earthLevels
  end

  post '/earthLevels' do
    yourLevel = params[:level].to_i
    if yourLevel == 1
      redirect '/earthLevel1'
    end
  end

  get '/earthLevel1' do
    @question = Question.all.to_a.map(&:id)
    @currentQuestion = @question.shift
    @question_id = @currentQuestion
    session[:question] = @question
    session[:currentQuestion] = @currentQuestion
    erb :earthLevel1
  end

  post '/earthLevel1' do
    yourAnswer = params[:button].to_i
    u = session[:currentQuestion]
    ques = Question.find_by(id: u)
    if ques.answers[yourAnswer-1] == ques.correct_answer
      redirect '/menu'
    else
      erb :earthLevel1
    end
  end

end
