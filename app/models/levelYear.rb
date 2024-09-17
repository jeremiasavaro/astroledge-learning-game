require 'sinatra'
require 'sinatra/activerecord'

class LevelYear < ActiveRecord::Base
  belongs_to :planet
  has_many :questionsYear, dependent: :destroy
  validates :number, presence: true
  validate :has_at_most_two_questions?

  def has_at_most_two_questions?
    if questions.size > 2
      errors.add(:questionsYear, "A levelYear can have a maximum of 2 questions.")
    end
  end
end
