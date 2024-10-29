# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/question'
require_relative '../models/answer'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe Question, type: :model do
  let(:question) { described_class.create(description: 'Example question', level_id: 1) }
  let(:answers) do
    [
      { description: 'a1', correct: false, question: question },
      { description: 'a2', correct: false, question: question },
      { description: 'a3', correct: true, question: question },
      { description: 'a4', correct: false, question: question }
    ]
  end

  describe 'answers' do
    before { Answer.create(answers) }

    it 'has 4 options' do
      expect(question.reload).to have_4_options
    end

    it 'has the correct answer set as a3' do
      expect(question.correct_answer.description).to eq('a3')
    end
  end

  describe 'validations' do
    it 'is invalid without a description' do
      invalid_question = described_class.new(description: nil)
      expect(invalid_question).not_to be_valid
    end
  end
end
