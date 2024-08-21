ENV['APP_ENV'] = 'test'

require_relative '../models/answer.rb'
require 'rspec'
require 'spec_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create(description: "Sample Question", level_id: 1) }

  it "is valid with a description and correct value" do
    expect(Answer.new(description: "Sample Answer", correct: false, question: question)).to be_valid
  end


end
