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
    if user.nil?
      # Usuario no encontrado
      @error = "Usuario no encontrado."
      erb :login
    else
      if user.authenticates(pswd)
        redirect '/solarSystem'
      else
        # Autenticación fallida
        @error = "Contraseña incorrecta."
        erb :login
      end
    end
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
        @error = "Nombre de usuario ya está en uso."
        erb :register
      else
        user = User.create(username: usernameNew, password: passwordNew, score: 0, actual_level: 0)
        user.save
        redirect '/login'
      end
    end
  end

  post '/solarSystem' do
    erb :solarSystem
  end

  post '/earthLevels' do
    erb :earthLevels
  end

  post '/menu' do
    erb :menu
  end
end
