# server.rb

require 'sinatra'
require 'sinatra/activerecord'

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
    login_nombre_usuario = params[:nombre_usuario]
    login_contrasena = params[:contrasena]
    #si todos los parametros son correctos, verificados en la base de datos ingresamos al juego
  end

  post '/register' do
    register_nombre_usuario = params[:reg_nombre_usuario]
    register_contraseña = params[:reg_contraseña]
    register_repetir_contraseña = params[:reg_repetir_contraseña]
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
