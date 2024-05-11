class Question < ActiveRecord:Base
  belongs_to :level
  has_many :answers
  validates :description, presence: true

  def correct_answer
    answers.find_by(correct: true)
  end
end
