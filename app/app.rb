# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

enable :sessions

require './models/user'
require './models/planet'
require './models/level'
require './models/question'
require './models/answer'
require './models/question_user'
require './models/question_year_user'
require './models/question_year'
require './models/answer_year'
require './models/level_year'
require './models/question_time_trial'
require './models/answer_time_trial'
require_relative 'controllers/users_controller'
require_relative 'controllers/levels_controller'
require_relative 'controllers/rankings_controller'
require_relative 'controllers/add_question_controller'
require_relative 'controllers/time_trial_controller'

set :database_file, './config/database.yml'
set :public_folder, 'assets'
use UsersController
use LevelsController
use RankingsController
use AddQuestionController
use TimeTrialController

# Main application class for the Sinatra app
class App < Sinatra::Application
  configure do
    set :views, './views'
  end

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

  get '/solarSystem' do
    erb :solarSystem
  end

  post '/solarSystem' do
    redirect '/mainMenu' if params[:back]
    session[:planet] = params[:planet]
    planet = session[:planet]
    session[:planet_id] = Planet.find_by(name: planet).id
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
    redirect '/solarSystem' if params[:back]
    your_level = params[:level].to_i
    session[:first_level] = true # first time playing
    session[:level_selected] = your_level # selected level
    if your_level == 4
      redirect '/planetLevelYear'
    else
      redirect '/planetLevelQuiz'
    end
  end

  get '/responseYear' do
    erb :responseYear
  end

  post '/responseYear' do
    redirect '/planetLevelYear'
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
      user.see_correct = user.see_correct ? false : true
      user.save
      redirect '/mainMenu'
    end

    redirect '/solarSystem' if params[:solarSystem]

    redirect '/ranking' if params[:ranking]

    redirect '/timeTrialRanking' if params[:timeTrialRanking]

    redirect '/learn' if params[:learn]

    redirect '/timeTrial' if params[:timeTrial]

    redirect '/whereAddQuestion' if params[:whereAddQuestion]

    redirect '/rankingQuestions' if params[:rankingQuestions]

    redirect '/rankingQuestionsIncorrectly' if params[:rankingQuestionsIncorrectly]
  end
end
