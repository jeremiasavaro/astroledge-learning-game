require 'sinatra'
require 'sinatra/activerecord'

class Planet < ActiveRecord::Base
  has_many :levels, dependent: :destroy
  validates :name, presence: true
  validate :validate_level_count

  private

  def validate_level_count
    if levels.count > 3
      errors.add(:levels, "A planet can have a maximum of 3 levels.")
    end
  end
end
