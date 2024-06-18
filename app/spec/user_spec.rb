ENV['APP_ENV'] = 'test'

require_relative '../models/user.rb'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe User, type: :model do
  it "is valid with a username and password" do
    user = User.new(username: "user", password: "pass")
    expect(user.username).to eq("user")
    expect(user.password).to eq("pass")
  end

  it 'should see the correct answer if see_correct is true' do
    user = User.new(see_correct: true)
    expect(user.see_correct).to be true
  end

  it 'should not see the correct answer if see_correct is false' do
    user = User.new(see_correct: false)
    expect(user.see_correct).to be false
  end
end
