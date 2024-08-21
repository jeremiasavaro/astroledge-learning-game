ENV['APP_ENV'] = 'test'

require_relative '../models/level.rb'
require_relative '../models/planet.rb'
require 'rspec'
require 'spec_helper'

RSpec.describe Level, type: :model do
  let(:planet) { Planet.create(name: "Earth") }

  it "is valid with a number" do
    level = Level.new(number: 1, planet: planet)
    expect(level).to be_valid
  end

  it "is invalid without a number" do
    level = Level.new(planet: planet)
    expect(level).not_to be_valid
    expect(level.errors[:number]).to include("can't be blank")
  end
end
