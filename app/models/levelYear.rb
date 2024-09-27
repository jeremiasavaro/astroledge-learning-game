require 'sinatra'
require 'sinatra/activerecord'

class LevelYear < ActiveRecord::Base
  belongs_to :planet
  has_many :question_years, dependent: :destroy
  validates :number, presence: true
  validate :has_at_most_two_questions?

  def has_at_most_two_questions?
    if question_years.size > 2
      errors.add(:question_years, "A levelYear can have a maximum of 2 questions.")
    end
  end
end
