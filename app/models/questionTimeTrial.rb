require 'sinatra'
require 'sinatra/activerecord'

class QuestionsTimeTrial < ActiveRecord::Base
  has_many :answers_time_trial
  validates :description, presence: true
  has_many :question_users
  has_many :users, through: :question_users

  def correct_answer
    answers_time_trial.find_by(correct: true)
  end

  def has_4_options?
    answers_time_trial.size == 4
  end
end
