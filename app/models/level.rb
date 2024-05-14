class Level < ActiveRecord::Base
  belongs_to :planet
  has_many :questions, dependent: :destroy
  validates :number, presence: true
  validate :validate_question_count

  private

  def validate_question_count
    if questions.size > 3
      errors.add(:questions, "A level can have a maximum of 3 questions.")
    end
  end
end
