# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The AnswersTimeTrial class represents an answer to a time trial question in the application.
# It includes validations to ensure that only one correct answer exists per question.
class AnswersTimeTrial < ActiveRecord::Base
  belongs_to :questions_time_trial
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :only_one_answer?, if: :correct

  def only_one_answer?
    return false unless questions_time_trial.answers_time_trial.where(correct: true).count > 1

    errors.add(:correct, 'Solo puede haber una respuesta correcta por pregunta')
  end
end
