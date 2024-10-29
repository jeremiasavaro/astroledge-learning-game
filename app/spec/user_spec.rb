# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../models/user'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe User, type: :model do
  let(:user) { described_class.new(username: 'user', password: 'pass', see_correct: true) }

  describe 'validations' do
    context 'when username and password are present' do
      it 'is valid with a username' do
        expect(user.has_username?).to be(true)
      end

      it 'is valid with a password' do
        expect(user.has_password?).to be(true)
      end
    end

    context 'when username is missing' do
      it 'returns false for has_username?' do
        user_without_username = described_class.new(password: 'pass', score: 0, see_correct: true)
        expect(user_without_username.has_username?).to be false
      end
    end
  end

  describe 'see_correct attribute' do
    context 'when see_correct is true' do
      it 'allows seeing the correct answer' do
        user_with_see_correct = described_class.new(see_correct: true)
        expect(user_with_see_correct.see_correct).to be true
      end

      it 'returns true for see_the_correct?' do
        expect(user.see_the_correct?).to be true
      end
    end

    context 'when see_correct is false' do
      it 'does not allow seeing the correct answer' do
        user_without_see_correct = described_class.new(see_correct: false)
        expect(user_without_see_correct.see_correct).to be false
      end
    end
  end

  describe 'authentication' do
    context 'with correct password' do
      it 'authenticates successfully' do
        expect(user.authenticates('pass')).to be true
      end
    end

    context 'with incorrect password' do
      it 'fails to authenticate' do
        expect(user.authenticates('wrongpass')).to be false
      end
    end
  end
end
