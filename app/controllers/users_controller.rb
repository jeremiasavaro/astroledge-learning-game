# frozen_string_literal: true

require './models/user'

# controller class for users
class UsersController < Sinatra::Base
  configure do
    set :views, './views'
  end

  get '/login' do
    @user_login_exist = true
    @pass_login_correct = true
    erb :login
  end

  post '/login' do
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)
    if user.nil?
      @error = 'User not found.'
      @user_login_exist = false
      erb :login
    else
      @user_login_exist = true
      if user.authenticates(password)
        session[:user_id] = user.id
        session[:score_user] = user.score
        redirect '/mainMenu'
      else
        @error = 'Incorrect password.'
        @pass_login_correct = false
        erb :login
      end
    end
  end

  get '/register' do
    @password_dist = false
    @user_oc = false
    erb :register
  end

  post '/register' do
    new_username = params[:username]
    new_password = params[:password]
    new_password_repeat = params[:password_rep]
    if new_password == new_password_repeat
      aut = User.find_by(username: new_username)
      @password_dist = false
      if aut
        @user_oc = true
        erb :register
      else
        user = User.new
        create_user(user, new_username, new_password)
        user.save
        redirect '/login'
      end
    else
      @error = "Passwords don't match."
      @password_dist = true
      erb :register
    end
  end

  def create_user(user, new_username, new_password)
    user.username = new_username
    user.password = new_password
    user.score = 0
    user.score_time_trial = 0
    user.see_correct = false
    user.is_admin = false
    user.is_admin = true if %w[maxi mateo bachi].include?(new_username)
  end
end
