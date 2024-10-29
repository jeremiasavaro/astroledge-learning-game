# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The Level class represents a level in the application.
# It includes validations to ensure that a level can have a maximum of 3 questions.
class Level < ActiveRecord::Base
  belongs_to :planet
  has_many :questions, dependent: :destroy
  validates :number, presence: true
  validate :at_most_three_questions?

  def at_most_three_questions?
    return false unless questions.size > 3

    errors.add(:questions, 'A level can have a maximum of 3 questions.')
  end
end
