ENV['APP_ENV'] = 'test'

require_relative '../models/answer.rb'
require_relative '../models/question.rb'
require 'rspec'
require 'spec_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create(description: "Sample Question", level_id: 1) }

  it "is valid with a description and correct value" do
    answer = Answer.new(description: "Sample Answer", correct: false, question: question)
    expect(answer).to be_valid
  end

  it "is invalid without a description" do
    answer = Answer.new(description: nil, correct: false, question: question)
    expect(answer).not_to be_valid
  end

  it "allows only one correct answer per question" do
    Answer.create(description: "Correct Answer", correct: true, question: question)
    another_answer = Answer.new(description: "Another Answer", correct: true, question: question)
    expect(another_answer).not_to be_valid
  end
end
