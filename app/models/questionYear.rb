require 'sinatra'
require 'sinatra/activerecord'

class QuestionYear < ActiveRecord::Base
  belongs_to :level_year
  has_one :answer_year
  validates :description, presence: true
  has_many :question_users
  has_many :users, through: :question_users
end
