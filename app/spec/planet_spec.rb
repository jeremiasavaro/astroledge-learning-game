# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/planet'
require_relative '../models/level'
require 'rspec'
require 'spec_helper'

RSpec.describe Planet, type: :model do
  describe 'validations' do
    it 'is valid with a name' do
      planet = described_class.new(name: 'Earth')
      expect(planet).to be_valid
    end

    context 'when name is missing' do
      let(:planet) { described_class.new }

      it 'is invalid' do
        expect(planet).not_to be_valid
      end

      it 'adds an error on the name attribute' do
        planet.validate
        expect(planet.errors[:name]).to include("can't be blank")
      end
    end

    context 'with levels constraint' do
      let(:planet) { described_class.create(name: 'Example Planet') }

      it 'allows a planet to have up to 3 levels' do
        (1..3).each { |i| Level.create(number: i, planet: planet) }
        expect(planet).to be_valid
      end

      it 'is invalid if it has more than 3 levels' do
        (1..3).each { |i| Level.create(number: i, planet: planet) }
        Level.create(number: 4, planet: planet)
        planet.validate
        expect(planet).not_to be_valid
      end

      it 'adds an error on the levels attribute when exceeding the limit' do
        (1..4).each { |i| Level.create(number: i, planet: planet) }
        planet.validate
        expect(planet.errors[:levels]).to include('A planet can have a maximum of 3 levels.')
      end
    end
  end
end
