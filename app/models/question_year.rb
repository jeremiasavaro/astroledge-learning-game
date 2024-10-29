# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The QuestionYear class represents a question for a specific year in the application.
# It includes validations to ensure that the description is present.
# It also provides methods to increment correct and incorrect answer counts,
# find the correct answer, and check if the question has 4 options.
class QuestionYear < ActiveRecord::Base
  belongs_to :level_year
  has_one :answer_year
  validates :description, presence: true
  has_many :question_year_users
  has_many :users, through: :question_year_users

  # Incrementa el contador de respuestas correctas
  def increment_correct_count
    self.correct_count ||= 0
    self.correct_count += 1
    save
  end

  # Incrementa el contador de respuestas incorrectas
  def increment_incorrect_count
    self.incorrect_count ||= 0
    self.incorrect_count += 1
    save
  end

  def correct_answer_year
    answer_year if answer_year.correct
  end
end
