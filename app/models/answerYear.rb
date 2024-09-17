require 'sinatra'
require 'sinatra/activerecord'

class AnswerYear < ActiveRecord::Base
  belongs_to :question_year
  validates :description, presence: true

end
