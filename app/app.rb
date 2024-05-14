# server.rb

require 'sinatra'
require 'sinatra/activerecord'
require './models/user'
require './models/planet'
require './models/level'
require './models/question'
require './models/answer'

set :database_file, './config/database.yml'

class App < Sinatra::Application

  def initialize(app = nil)
    super()
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

  get '/login' do
    erb :login
  end

  get '/register' do
    erb :register
  end
  get '/solarSystem' do
    erb :solarSystem
  end

  get '/earthLevels' do
    erb :earthLevels
  end

  post '/login' do
    username = params[:username]
    pswd = params[:password]

    user = User.find_by(username: username)
    if user == nil
      #do something
    else
      if user.authenticate(pswd)
        redirect '/solarSystem'
    end
  end

  post '/register' do
    usernameNew = params[:username]
    passwordNew = params[:password]
    passwordRepeat = params[:passwordRep]

    if passwordNew != passwordRepeat
      #password dont match, do something
    else
      aut = User.find_by(username: usernameNew)
      if aut != nil

      else
        user = User.create(username: usernameNew, password: passwordNew)
        redirect '/login'
      end
    end
  end

  post '/solarSystem' do
    erb :'/solarSystem'
  end

  post '/earthLevels' do
    erb :'/earthLevels'
  end

  post '/menu' do
    erb :menu
  end
end
end
