# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The QuestionUser class represents the association between questions and users.
# It includes validations to ensure the presence of question_id and user_id,
# and that the combination of question_id and user_id is unique.
class QuestionUser < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  # Validates that 'correct' must be either true or false
  validates :correct, inclusion: { in: [true, false] }

  # Validates the presence of question_id and user_id
  validates :question_id, presence: true
  validates :user_id, presence: true

  # Ensures the uniqueness of the combination of question_id and user_id
  validates :question_id, uniqueness: { scope: :user_id, message: 'has already been answered by this user' }
end
