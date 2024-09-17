require 'sinatra'
require 'sinatra/activerecord'

class QuestionYear < ActiveRecord::Base
  belongs_to :levelYear
  has_one :answerYear
  validates :description, presence: true
  has_many :question_users
  has_many :users, through: :question_users
end
