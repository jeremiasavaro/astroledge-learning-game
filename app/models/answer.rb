# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

class Answer < ActiveRecord::Base
  belongs_to :question
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :has_only_one_answer?, if: :correct

  def has_only_one_answer?
    return false unless question.answers.where(correct: true).where.not(id: id).exists?

    errors.add(:correct, 'There can only be one correct answer per question.')
  end
end
