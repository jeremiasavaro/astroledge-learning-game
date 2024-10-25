# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The LevelYear class represents a level in the application.
# It includes validations to ensure that a level can have a maximum of 2 questions.
class LevelYear < ActiveRecord::Base
  belongs_to :planet
  has_many :question_years, dependent: :destroy
  validates :number, presence: true
  validate :at_most_two_questions?

  def at_most_two_questions?
    return false unless question_years.size > 2

    errors.add(:question_years, 'A levelYear can have a maximum of 2 questions.')
  end
end
