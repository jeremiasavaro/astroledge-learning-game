# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/level'
require_relative '../models/planet'
require_relative '../models/question'
require 'rspec'
require 'spec_helper'

RSpec.describe Level, type: :model do
  let(:planet) { Planet.create(name: 'Earth') }

  it 'is valid with a number' do
    level = Level.new(number: 1, planet: planet)
    expect(level).to be_valid
  end

  it 'is invalid without a number' do
    level = Level.new(planet: planet)
    expect(level).not_to be_valid
  end

  it 'is invalid if it has more than three questions' do
    level = Level.create(number: 1, planet: planet)
    (1..3).each do |_|
      Question.create(description: 'Sample Question', level: level)
    end
    Question.create(description: 'Fourth Question', level: level)
    level.save
    expect(level).not_to be_valid
    expect(level.errors[:questions]).to include('A level can have a maximum of 3 questions.')
  end
end
