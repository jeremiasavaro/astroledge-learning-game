# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'

# The Planet class represents a planet in the application.
# It includes validations to ensure that a planet can have a maximum of 3 levels and 1 levelYear.
class Planet < ActiveRecord::Base
  has_many :levels, dependent: :destroy
  has_one :level_year, dependent: :destroy
  validates :name, presence: true
  validate :at_most_three_levels?
  validate :at_most_one_level_year?

  def at_most_three_levels?
    return unless levels.count > 3

    errors.add(:levels, 'A planet can have a maximum of 3 levels.')
  end

  def at_most_one_level_year?
    return unless level_year && level_year.count > 1

    errors.add(:level_year, 'A planet can have a maximum of 1 levelYear.')
  end
end
