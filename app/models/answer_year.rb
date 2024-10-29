# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The AnswerYear class represents an answer to a yearly question in the application.
# It includes validations to ensure that the description is present and the correct attribute is a boolean.
class AnswerYear < ActiveRecord::Base
  belongs_to :question_year
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
end
