require 'sinatra'
require 'sinatra/activerecord'

class Level < ActiveRecord::Base
  belongs_to :planet
  has_many :questions, dependent: :destroy
  validates :number, presence: true
  validate :has_at_most_three_questions?

  def has_at_most_three_questions?
    if questions.size > 3
      errors.add(:questions, "A level can have a maximum of 3 questions.")
    end
  end
end
