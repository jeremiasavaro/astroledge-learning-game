class Planet < ActiveRecord:Base
  has_many :levels
  validate :validate_level_count

  def validate_level_count
    if levels.size > 3
      errors.add(:levels, "A planet must have only 3 levels.")
    end
  end
end
