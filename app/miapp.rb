require 'sinatra'

    get '/' do
      erb :menu
    end

    post '/' do
      erb :menu
    end

    get '/login' do
      erb :login
    end

    get '/register' do
      erb :register
    end

    post '/login' do
      nombre_usuario = params[:nombre_usuario]
      contrasena = params[:contrasena]
      repetir_contrasena = params[:repetir_contrasena]
    end

    post '/menu' do
      erb :menu
    end
