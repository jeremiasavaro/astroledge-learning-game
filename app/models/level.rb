class Level < ActiveRecord:Base
  has_many :questions
  validates :number, presence: true
  validate :validate_level_count

  def validate_level_count
    if questions.size > 3
      errors.add(:questions, "A level must have only 3 questions.")
    end
  end
end
