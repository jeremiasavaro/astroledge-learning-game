class Question < ActiveRecord::Base
  belongs_to :level
  has_many :answers
  validates :description, presence: true
  has_many :questions_users
  has_many :users, through: :questions_users

  def correct_answer
    answers.find_by(correct: true)
  end
end
