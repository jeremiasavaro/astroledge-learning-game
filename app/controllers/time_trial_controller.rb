# frozen_string_literal: true

# controller class for mode timeTrial
class TimeTrialController < Sinatra::Base
  configure do
    set :views, './views'
  end

  # inicializamos $total_time si no existe
  total_time ||= 0

  get '/timeTrial' do
    # si el juego todavia no empezó asignas las preguntas
    if session[:game_started]
      @current_question = QuestionsTimeTrial.find(session[:current_question])
    else
      @questions_tt = QuestionsTimeTrial.order('RANDOM()')
      @current_question = @questions_tt.first
      session[:questions] = @questions_tt.map(&:id)
      session[:current_question] = @current_question.id
      session[:time_left] = 30
      session[:game_started] = false
    end

    erb :timeTrial
  end

  # endpoint para enviar tiempo restante a frontend
  get '/time_left' do
    content_type :json
    session[:time_left] = session[:time_left] - 1
    total_time += 1
    { time_left: session[:time_left] }.to_json
  end

  post '/timeTrial' do
    # el juego empezo
    session[:game_started] = true

    # obtener la pregunta actual
    current_question = QuestionsTimeTrial.find(session[:current_question])
    selected_answer = params[:answer] # recibis el ID de la respuesta
    redirect '/endTimeTrial' if session[:time_left] <= 0 || selected_answer.nil?
    # evaluas si la respuesta es correcta o incorrecta
    if current_question.answers_time_trial.find_by(id: selected_answer).correct
      current_question.increment_correct_count
      session[:time_left] += 10 # aumentas 10 segundos si es correcta
    else
      current_question.increment_incorrect_count
      session[:time_left] -= 5 # decrementas 5 segundos si es incorrecta
    end

    # Obtener la siguiente pregunta
    remaining_questions = session[:questions].reject { |id| id == current_question.id }
    if remaining_questions.empty?
      redirect '/endTimeTrial' # si no hay mas preguntas termina el juego
    else
      session[:questions] = remaining_questions
      session[:current_question] = remaining_questions.first
      redirect '/timeTrial'
    end
  end

  get '/endTimeTrial' do
    @total_time = total_time
    user = User.find_by(id: session[:user_id])
    if @total_time > user.score_time_trial
      user.score_time_trial = @total_time
      user.save
    end
    erb :endTimeTrial
  end

  post '/endTimeTrial' do
    session[:game_started] = false
    session[:time_left] = 30
    # reiniciamos total time
    total_time = 0
    redirect '/mainMenu' if params[:backToMenu]
  end
end
