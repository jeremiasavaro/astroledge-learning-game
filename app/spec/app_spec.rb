ENV['APP_ENV'] = 'test'

require_relative '../app'
require_relative '../models/user'
require_relative '../models/answer'
require_relative '../models/planet'
require_relative '../models/question'
require_relative '../models/questionUser'
require_relative '../models/level'
require 'rspec'
require 'rack/test'
require 'spec_helper'

RSpec.describe "App" do
  include Rack::Test::Methods

  def app
    App.new
  end

  describe "POST /register" do
    context "when passwords match" do
      it "creates a new user and redirects to login" do
        post '/register', username: 'new_user', password: 'password123', password_rep: 'password123'
        expect(last_response).to be_redirect
        follow_redirect!
        expect(last_request.path).to eq('/login')
      end
    end

    context "when passwords do not match" do
      it "shows an error for password mismatch" do
        post '/register', username: 'new_user', password: 'password123', password_rep: 'wrong_password'
        expect(last_response.body).to include("Passwords are not the same")
      end
    end

    context "when username is taken" do
      let!(:existing_user) { User.create(username: 'existing_user', password: 'password123') }

      it "shows an error for username already taken" do
        post '/register', username: 'existing_user', password: 'password123', password_rep: 'password123'
        expect(last_response.body).to include("<p>Username not registered, try another</p>")
      end
    end
  end

  describe "GET /login" do
    it "renders the login page" do
      get '/login'
      expect(last_response).to be_ok
      expect(last_response.body).to include("Login")
    end
  end

  describe "POST /login" do
    context "with valid credentials" do
      let!(:user) { User.create(username: 'test_user', password: 'password123') }

      it "logs the user in and redirects to main menu" do
        post '/login', username: 'test_user', password: 'password123'
        expect(last_response).to be_redirect
        follow_redirect!
        expect(last_request.path).to eq('/mainMenu')
      end
    end

    context "with invalid credentials" do
      it "shows an error for incorrect username" do
        post '/login', username: 'wrong_user', password: 'password123'
        expect(last_response.body).to include("Username not exists")
      end

      it "shows an error for incorrect password" do
        user = User.create(username: 'test_user', password: 'password123')
        post '/login', username: 'test_user', password: 'wrong_password'
        expect(last_response.body).to include("Incorrect password")
      end
    end
  end

  describe "GET /solarSystem" do
    it "renders the solar system page" do
      get '/solarSystem'
      expect(last_response).to be_ok
      expect(last_response.body).to include("Planets")
    end
  end

  describe "POST /planetLevels" do
    let!(:planet) { Planet.create(name: 'Earth') }
    let!(:level) { Level.create(number: 1, planet: planet) }

    it "redirects to planet level quiz when level is selected" do
      post '/planetLevels', level: '1'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/planetLevelQuiz')
    end

    it "redirects back to solar system if back is pressed" do
      post '/planetLevels', back: true
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/solarSystem')
    end
  end

  describe "GET /ranking" do
    it "renders the ranking page" do
      get '/ranking'
      expect(last_response).to be_ok
      expect(last_response.body).to include("Ranking")
    end
  end
end
