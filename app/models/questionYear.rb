require 'sinatra'
require 'sinatra/activerecord'

class QuestionYear < ActiveRecord::Base
  belongs_to :level_year
  has_one :answer_year
  validates :description, presence: true
  has_many :question_year_users
  has_many :users, through: :question_year_users

  # Incrementa el contador de respuestas correctas
  def increment_correct_count
    self.correct_count ||= 0
    self.correct_count += 1
    save
  end

  # Incrementa el contador de respuestas incorrectas
  def increment_incorrect_count
    self.incorrect_count ||= 0
    self.incorrect_count += 1
    save
  end

  def correct_answerYear
    answer_year if answer_year.correct
  end

end
