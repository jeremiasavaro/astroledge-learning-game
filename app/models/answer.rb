class Answer < ActiveRecord:Base
  belongs_to :question
  validates :description, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :validate_single_correct_answer, if: :correct?

  def validate_single_correct_answer
    errors.add(:correct, "There can only be one correct answer per question.") if question.correct_answer.present?
  end
end
