require 'sinatra'
require 'sinatra/activerecord'

class AnswersTimeTrial < ActiveRecord::Base
  belongs_to :questions_time_trial
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :has_only_one_answer?, if: :correct
end

def has_only_one_answer?
  if questions_time_trial.answers_time_trial.where(correct: true).count > 1
    errors.add(:correct, "Solo puede haber una respuesta correcta por pregunta")
  end
end
