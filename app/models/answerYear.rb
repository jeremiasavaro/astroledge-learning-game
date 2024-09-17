require 'sinatra'
require 'sinatra/activerecord'

class AnswerYear < ActiveRecord::Base
  belongs_to :questionYear
  validates :description, presence: true

end
