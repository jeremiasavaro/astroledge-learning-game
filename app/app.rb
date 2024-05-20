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
        session[:score_user] = user.score
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
    if params[:logout]
      
      session.clear
      redirect '/login'
    end
    planet = params[:planet] 
    PLANET_ID = Planet.find_by(name: planet).id
    redirect '/planetLevels'
  end

  get '/planetLevels' do
    erb :planetLevels
  end

  post '/planetLevels' do
    if params[:back]
      redirect '/solarSystem'
    end
    yourLevel = params[:level].to_i
    session[:firstLevel] = true   #Primera vez jugando
    session[:levelSelected] = yourLevel #Nivel seleccionado
    redirect '/planetLevel1'
  end

  get '/planetLevel1' do
    if session[:firstLevel] == true # Si estoy jugando el primer nivel
      levelSelected = session[:levelSelected]
      level_n = Level.find_by(planet_id: PLANET_ID, number: levelSelected)

      if level_n.nil?
        halt 404, "Level not found"
      end

      @questions = level_n.questions.pluck(:id)
      
      if @questions.empty?
        halt 404, "No questions found for this level"
      end

      @currentQuestion = @questions.shift # Saco la primer pregunta del nivel1
      session[:questions] = @questions # Guardo todas las preguntas en la sesion
      session[:currentQuestion] = @currentQuestion  # Guardo la pregunta actual en la sesion
      session[:firstLevel] = false 
    else # Ya tengo todas las preguntas guardadas, solo saco la siguiente
      @questions = session[:questions]
      @currentQuestion = @questions.shift
      session[:questions] = @questions
      session[:currentQuestion] = @currentQuestion
    end
    erb :planetLevel1
  end

  post '/planetLevel1' do
    if params[:back] 
      redirect '/planetLevels'
    end
    session[:yourAnswer] = params[:button].to_i
    u = session[:currentQuestion]

    @quest = Question.find_by(id: u)
    @selected_answer = Answer.find_by(id: session[:yourAnswer])
  
    redirect '/response'
  end

  get '/response' do
    erb :response
  end

  post '/response' do
    redirect '/planetLevel1'
  end

end