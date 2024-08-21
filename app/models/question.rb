require 'sinatra'
require 'sinatra/activerecord'

class Question < ActiveRecord::Base
  belongs_to :level
  has_many :answers
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