# frozen_string_literal: true

require './models/planet'
require './models/level'
require './models/question'

# controller class for ranking
class RankingsController < Sinatra::Base
  configure do
    set :views, './views'
  end

  get '/rankingQuestions' do
    questions = []
    questions.concat(Question.order(correct_count: :desc).limit(10))
    questions.concat(QuestionYear.order(correct_count: :desc).limit(10))
    questions.concat(QuestionsTimeTrial.order(correct_count: :desc).limit(10))
    questions.sort_by!(&:correct_count).reverse!
    @questions = questions.take(10)
    erb :rankingQuestions
  end

  post '/rankingQuestions' do
    redirect '/mainMenu' if params[:back]
  end

  get '/rankingQuestionsIncorrectly' do
    questions = []
    questions.concat(Question.order(incorrect_count: :desc).limit(10))
    questions.concat(QuestionYear.order(incorrect_count: :desc).limit(10))
    questions.concat(QuestionsTimeTrial.order(incorrect_count: :desc).limit(10))
    questions.sort_by!(&:incorrect_count).reverse!
    @questions = questions.take(10)
    erb :rankingQuestionsIncorrectly
  end

  post '/rankingQuestionsIncorrectly' do
    redirect '/mainMenu' if params[:back]
  end

  get '/timeTrialRanking' do
    @users = User.order(score_time_trial: :desc).limit(10)
    erb :timeTrialRanking
  end

  post '/timeTrialRanking' do
    redirect '/mainMenu' if params[:back]
  end

  get '/ranking' do
    @users = User.order(score: :desc).limit(10)
    erb :ranking
  end

  post '/ranking' do
    redirect '/mainMenu' if params[:back]
  end
end
