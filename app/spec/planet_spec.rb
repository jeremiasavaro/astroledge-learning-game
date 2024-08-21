ENV['APP_ENV'] = 'test'

require_relative '../models/planet.rb'
require_relative '../models/level.rb'
require 'rspec'
require 'spec_helper'

RSpec.describe Planet, type: :model do
  it "is valid with a name" do
    planet = Planet.new(name: "Earth")
    expect(planet).to be_valid
  end

  it "is invalid without a name" do
    planet = Planet.new
    expect(planet).not_to be_valid
    expect(planet.errors[:name]).to include("can't be blank")
  end

  it "is invalid if it has more than three levels" do
    planet = Planet.create(name: "Example Planet")
    for i in 1..3 do
      Level.create(number: i, planet: planet)
    end
    Level.create(number: 4, planet: planet)
    planet.save
    expect(planet).not_to be_valid
    expect(planet.errors[:levels]).to include("A planet can have a maximum of 3 levels.")
  end
end
