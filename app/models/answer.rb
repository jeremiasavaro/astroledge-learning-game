require 'sinatra'
require 'sinatra/activerecord'

class Answer < ActiveRecord::Base
  belongs_to :question
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :validate_single_correct_answer, if: :correct

  def validate_single_correct_answer
    if question.answers.where(correct: true).where.not(id: id).exists?
      errors.add(:correct, "There can only be one correct answer per question.")
    end
  end


end
