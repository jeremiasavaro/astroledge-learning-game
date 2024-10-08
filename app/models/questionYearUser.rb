require 'sinatra'
require 'sinatra/activerecord'

class QuestionYearUser < ActiveRecord::Base
  belongs_to :question_year
  belongs_to :user

  # Validates that 'correct' must be either true or false
  validates :correct, inclusion: { in: [true, false] }

  # Validates the presence of question_id and user_id
  validates :question_year_id, presence: true
  validates :user_id, presence: true

  # Ensures the uniqueness of the combination of question_id and user_id
  validates :question_year_id, uniqueness: { scope: :user_id, message: "has already been answered by this user" }
end
