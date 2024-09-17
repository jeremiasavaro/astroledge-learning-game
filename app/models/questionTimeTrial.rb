require 'sinatra'
require 'sinatra/activerecord'

class QuestionTimeTrial < ActiveRecord::Base
  belongs_to :timeTrial
  has_many :answersTimeTrial
  validates :description, presence: true
  has_many :question_users
  has_many :users, through: :question_users

  def correct_answer
    answers.find_by(correct: true)
  end

  def has_4_options?
    answers.size == 4
  end
end
