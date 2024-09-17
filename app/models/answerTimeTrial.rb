require 'sinatra'
require 'sinatra/activerecord'

class Answer < ActiveRecord::Base
  belongs_to :questionTimeTrial
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :has_only_one_answer?, if: :correct
end
