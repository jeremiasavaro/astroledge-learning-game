# frozen_string_literal: true

# controller class for add questions
class AddQuestionController < Sinatra::Base
  configure do
    set :views, '/home/mateo/Universidad/Tercer año/astroledge-learning-game/app/views'
  end

  get '/addQuestionNormal' do
    erb :addQuestionNormal
  end

  post '/addQuestionNormal' do
    unless params[:back]
      question_description = params[:question]
      planet_name = params[:planet]
      level_number = params[:level]
      score_question = params[:scoreQuestion]
      correct_answer_index = params[:correct_answer].to_i
      answers = params[:answers]

      # encuentro o creo el planeta
      planet = Planet.find_or_create_by(name: planet_name)

      # encuentro o creo el nivel
      level = Level.find_or_create_by(planet: planet, number: level_number)

      # encuentro o creo la pregunta
      question = Question.find_or_create_by(description: question_description, level: level,
                                            scoreQuestion: score_question)

      # guardo las respuestas, marcando la correcta según el índice enviado en correct_answer
      answers.each_with_index do |(_index, answer_data), idx|
        correct = (idx == correct_answer_index) # marc la respuesta correcta
        Answer.find_or_create_by(description: answer_data[:description], correct: correct, question: question)
      end

    end
    redirect '/mainMenu'
  end

  get '/addQuestionTimeTrial' do
    erb :addQuestionTimeTrial
  end

  post '/addQuestionTimeTrial' do
    unless params[:back]
      question_description = params[:question]
      answers = params[:answers]
      correct_answer_index = params[:correct_answer].to_i

      question = QuestionsTimeTrial.create(description: question_description, scoreQuestion: 15)

      # guardo las respuestas, marcando la correcta según el índice enviado en correct_answer
      answers.each_with_index do |(_index, answer_data), idx|
        correct = (idx == correct_answer_index) # marc la respuesta correcta
        question.answers_time_trial.create(description: answer_data[:description], correct: correct)
      end

    end
    redirect '/mainMenu'
  end
end
