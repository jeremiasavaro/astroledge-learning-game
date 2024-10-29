# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/level'
require_relative '../models/planet'
require_relative '../models/question'
require 'rspec'
require 'spec_helper'

RSpec.describe Level, type: :model do
  let(:planet) { Planet.create(name: 'Earth') }

  describe 'validations' do
    it 'is valid with a number' do
      level = described_class.new(number: 1, planet: planet)
      expect(level).to be_valid
    end

    it 'is invalid without a number' do
      level = described_class.new(planet: planet)
      expect(level).not_to be_valid
    end

    context 'when checking question limit' do
      let(:level) { described_class.create(number: 1, planet: planet) }

      before do
        3.times { Question.create(description: 'Sample Question', level: level) }
      end

      it 'is valid with up to 3 questions' do
        expect(level).to be_valid
      end

      it 'is invalid with more than 3 questions' do
        Question.create(description: 'Fourth Question', level: level)
        level.validate
        expect(level).not_to be_valid
      end

      it 'adds an error on the questions attribute when exceeding the limit' do
        Question.create(description: 'Fourth Question', level: level)
        level.validate
        expect(level.errors[:questions]).to include('A level can have a maximum of 3 questions.')
      end
    end
  end
end
