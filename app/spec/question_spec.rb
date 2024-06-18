ENV['APP_ENV'] = 'test'

require_relative '../models/question.rb'
require_relative '../models/answer.rb'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe Question do
  it 'should have 4 answers' do
    answers = [
      { description: 'a1', correct: false },
      { description: 'a2', correct: false },
      { description: 'a3', correct: true },
      { description: 'a4', correct: false }
    ]
    question = Question.new(answers: answers.map { |attrs| Answer.new(attrs) })
    expect(question).to have_4_options
  end

  it 'should not have 4 answers' do
    question = Question.new(answers: [])
    expect(question).not_to have_4_options
  end
end
