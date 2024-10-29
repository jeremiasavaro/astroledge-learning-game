# frozen_string_literal: true

require './models/planet'
require './models/level'
require './models/question'

# controller class for levels
class LevelsController < Sinatra::Base
  configure do
    set :views, './views'
  end

  get '/planetLevelQuiz' do
    if session[:first_level] == true # if the user it's playing the first level
      planet_id = session[:planet_id]
      level_selected = session[:level_selected]
      level_n = Level.find_by(planet_id: planet_id, number: level_selected)

      halt 404, 'Level not found.' if level_n.nil?

      @questions = level_n.questions.pluck(:id)

      halt 404, 'No questions found for this level.' if @questions.empty?

      @current_question = @questions.shift # takes the first question of level 1
      session[:questions] = @questions # save all questions in the session
      session[:current_question] = @current_question # save the current question in the session

      session[:first_level] = false
    else # already have all the questions saved, just take the next one
      @questions = session[:questions]
      @current_question = @questions.shift
      session[:questions] = @questions
      session[:current_question] = @current_question
    end
    erb :planetLevelQuiz
  end

  post '/planetLevelQuiz' do
    redirect '/planetLevels' if params[:back]
    session[:your_answer] = params[:button].to_i
    u = session[:current_question]

    @quest = Question.find_by(id: u)
    @selected_answer = Answer.find_by(id: session[:your_answer])

    redirect '/responseQuiz'
  end

  get '/planetLevelYear' do
    if session[:first_level] == true # if the user it's playing the first level
      session[:level_selected]
      planet_id = session[:planet_id] # Usa la ID del planeta almacenada en la sesións
      level_year_n = LevelYear.find_by(planet_id: planet_id, number: 1)

      halt 404, 'Level not found.' if level_year_n.nil?

      @question_years = level_year_n.question_years.pluck(:id)

      if @question_years.nil? || @question_years.empty?
        halt 404, 'No questions found for this level.'
      else
        @current_question_year = @question_years.shift # takes the first question of level 1
        session[:questionsYear] = @question_years # save all questions in the session
        session[:current_question_year] = @current_question_year # save the current question in the session
        session[:first_level] = false
      end
    else # already have all the questions saved, just take the next one
      @question_years = session[:questionsYear]
      @current_question_year = @question_years.shift
      session[:questionsYear] = @question_years
      session[:current_question_year] = @current_question_year
    end
    erb :planetLevelYear
  end

  post '/planetLevelYear' do
    redirect '/planetLevels' if params[:back]
    session[:your_answer] = params[:year].to_i
    u = session[:current_question_year]

    @quest_year = QuestionYear.find_by(id: u)
    @selected_answer_year = AnswerYear.find_by(id: session[:your_answer])
    redirect '/responseYear'
  end
end
