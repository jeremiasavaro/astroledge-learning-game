require 'sinatra'
require 'sinatra/activerecord'

class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :score_time_trial, numericality: { only_integer: true, greater_than_or_equal_to: 0 }  #for time trial gamemode. In seconds?
  validates :see_correct, inclusion: { in: [true, false] }
  has_many :question_users
  has_many :question_year_users
  has_many :question_years, through: :question_year_users
  has_many :questions, through: :question_users

  # authenticates user
  def authenticates(password)
    self.password == password
  end

  def see_the_correct?
    self.see_correct
  end

  def has_username?
    self.username.present?
  end

  def has_password?
    self.password.present?
  end

end
