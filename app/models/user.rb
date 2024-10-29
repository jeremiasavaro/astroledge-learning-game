# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The User class represents a user in the application.
# It includes validations for username, password, score, score_time_trial, see_correct, and is_admin.
# It also provides methods for authentication and checking the presence of username and password.
class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :score_time_trial, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :see_correct, inclusion: { in: [true, false] }
  validates :is_admin, inclusion: { in: [true, false] }
  has_many :question_users
  has_many :question_year_users
  has_many :question_years, through: :question_year_users
  has_many :questions, through: :question_users

  # Authenticates user
  def authenticates(password)
    self.password == password
  end

  def see_the_correct?
    see_correct
  end

  def username?
    username.present?
  end

  def password?
    password.present?
  end
end
