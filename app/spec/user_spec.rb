# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/user'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(username: 'user', password: 'pass', see_correct: true) }

  describe 'validations' do
    it 'is valid with a username and password' do
      expect(user.has_username?).to be(true)
      expect(user.has_password?).to be(true)
    end

    it 'returns false for have_username? when username is nil' do
      user2 = User.new(password: 'pass', score: 0, see_correct: true)
      expect(user2.has_username?).to be false
    end
  end
end

RSpec.describe User, type: :model do
  let(:user) { User.new(username: 'user', password: 'pass', see_correct: true) }

  describe 'see_correct attribute' do
    it 'should see the correct answer if see_correct is true' do
      user_aux = User.new(see_correct: true)
      expect(user_aux.see_correct).to be true
    end

    it 'should not see the correct answer if see_correct is false' do
      user_aux = User.new(see_correct: false)
      expect(user_aux.see_correct).to be false
    end

    it 'returns true for see_the_correct? when see_correct is true' do
      expect(user.see_the_correct?).to be true
    end
  end
end

RSpec.describe User, type: :model do
  let(:user) { User.new(username: 'user', password: 'pass', see_correct: true) }

  describe 'authentication' do
    it 'authenticates with a correct password' do
      expect(user.authenticates('pass')).to be true
    end

    it 'does not authenticate with an incorrect password' do
      expect(user.authenticates('wrongpass')).to be false
    end
  end
end
