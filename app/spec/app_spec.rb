# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../app'
require_relative '../models/user'
require_relative '../models/answer'
require_relative '../models/planet'
require_relative '../models/question'
require_relative '../models/question_user'
require_relative '../models/level'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe App do
  include Rack::Test::Methods

  def app
    App.new
  end

  describe 'POST /register' do
    context 'when passwords match' do
      it 'redirects to login' do
        post '/register', username: 'new_user', password: 'password123', password_rep: 'password123'
        expect(last_response).to be_redirect
        follow_redirect!
        expect(last_request.path).to eq('/login')
      end
    end
  end

  describe 'GET /login' do
    include Rack::Test::Methods

    def app
      App.new
    end

    it 'returns status ok' do
      get '/login'
      expect(last_response).to be_ok
    end

    it 'includes the login form in the response body' do
      get '/login'
      expect(last_response.body).to include('Login')
    end
  end

  describe 'POST /login' do
    let(:user) { User.create(username: 'test_user', password: 'password123') }

    context 'with valid credentials' do
      it 'redirects to the main menu' do
        post '/login', username: user.username, password: user.password
        expect(last_response).to be_redirect
        follow_redirect!
        expect(last_request.path).to eq('/mainMenu')
      end
    end
  end

  describe 'GET /solarSystem' do
    include Rack::Test::Methods

    def app
      App.new
    end

    it 'returns status ok' do
      get '/solarSystem'
      expect(last_response).to be_ok
    end

    it 'includes the word "Planets" in the response body' do
      get '/solarSystem'
      expect(last_response.body).to include('Planets')
    end
  end

  describe 'POST /planetLevels' do
    include Rack::Test::Methods

    def app
      App.new
    end

    let(:planet) { Planet.create(name: 'Earth') }
    let(:level) { Level.create(number: 1, planet: planet) }

    it 'redirects to planet level quiz when a level is selected' do
      post '/planetLevels', level: level.number.to_s
      expect(last_response).to be_redirect
    end

    it 'follows the redirect to planet level quiz' do
      post '/planetLevels', level: level.number.to_s
      follow_redirect!
      expect(last_request.path).to eq('/planetLevelQuiz')
    end

    it 'redirects back to solar system when back is pressed' do
      post '/planetLevels', back: true
      expect(last_response).to be_redirect
    end

    it 'follows the redirect back to the solar system' do
      post '/planetLevels', back: true
      follow_redirect!
      expect(last_request.path).to eq('/solarSystem')
    end
  end

  describe 'GET /ranking' do
    include Rack::Test::Methods

    def app
      App.new
    end

    it 'returns status ok' do
      get '/ranking'
      expect(last_response).to be_ok
    end

    it 'includes the word "Ranking" in the response body' do
      get '/ranking'
      expect(last_response.body).to include('Ranking')
    end
  end
end
