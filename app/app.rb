# server.rb

require 'sinatra'
require 'sinatra/activerecord'
require './models/user'

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
    username = params[:nombre_usuario]
    password = params[:contrasena]

    user = User.authenticate(username, password)
    if user
      redirect '/solarSystem'
    else
      #do something
    end
  end

  post '/register' do
    usernameNew = params[:reg_nombre_usuario]
    passwordNew = params[:reg_contraseña]
    passwordRepeat = params[:reg_repetir_contraseña]

    if params[:passwordNew] != params[:passwordRepeat]
      #password dont match, do something
    else
      aut = User.authenticate(usernameNew, passwordNew)
      if aut
        #user already exists, to implement something
      else
        user = User.create!(params)
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
