ENV['APP_ENV'] = 'test'

require_relative '../models/planet.rb'
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
end
