require 'sinatra'
require 'sinatra/activerecord'

class Planet < ActiveRecord::Base
  has_many :levels, dependent: :destroy
  validates :name, presence: true
  validate :has_at_most_three_levels?

  def has_at_most_three_levels?
    if levels.count > 3
      errors.add(:levels, "A planet can have a maximum of 3 levels.")
    end
  end
end
