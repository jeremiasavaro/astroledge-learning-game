require 'sinatra'
require 'sinatra/activerecord'

class Planet < ActiveRecord::Base
  has_many :levels, dependent: :destroy
  has_one :levelYear, dependent: :destroy
  validates :name, presence: true
  validate :has_at_most_three_levels?

  def has_at_most_three_levels?
    if levels.count > 3
      errors.add(:levels, "A planet can have a maximum of 3 levels.")
    end
  end

  def has_at_most_one_levelYear?
    if levelYear.count > 1
      errors.add(:levelYear, "A planet can have a maximum of 1 levelYear.")
    end
  end
end
