# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/answer'
require_relative '../models/question'
require 'rspec'
require 'spec_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create(description: 'Sample Question', level_id: 1) }

  it 'is valid with a description and correct value' do
    answer = described_class.new(description: 'Sample Answer', correct: false, question: question)
    expect(answer).to be_valid
  end

  it 'is invalid without a description' do
    answer = described_class.new(description: nil, correct: false, question: question)
    expect(answer).not_to be_valid
  end

  it 'allows only one correct answer per question' do
    described_class.create(description: 'Correct Answer', correct: true, question: question)
    another_answer = described_class.new(description: 'Another Answer', correct: true, question: question)
    expect(another_answer).not_to be_valid
  end
end
