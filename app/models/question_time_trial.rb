# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The QuestionsTimeTrial class represents a time trial question in the application.
# It includes validations to ensure that the description is present.
# It also provides methods to increment correct and incorrect answer counts,
# find the correct answer, and check if the question has 4 options.
class QuestionsTimeTrial < ActiveRecord::Base
  has_many :answers_time_trial
  validates :description, presence: true
  has_many :question_users
  has_many :users, through: :question_users

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

  def correct_answer
    answers_time_trial.find_by(correct: true)
  end

  def has_4_options?
    answers_time_trial.size == 4
  end
end
