# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/question'
require_relative '../models/answer'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe Question, type: :model do
  it 'should have 4 answers' do
    question = Question.create(description: 'Example question', level_id: 1)
    answers = [
      { description: 'a1', correct: false, question: question },
      { description: 'a2', correct: false, question: question },
      { description: 'a3', correct: true, question: question },
      { description: 'a4', correct: false, question: question }
    ]
    Answer.create(answers)
    expect(question.reload).to have_4_options
    expect(question.correct_answer.description).to eq('a3')
  end

  it 'is invalid without a description' do
    question = Question.new(description: nil)
    expect(question).not_to be_valid
  end
end
