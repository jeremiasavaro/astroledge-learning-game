# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_240_927_155_602) do
  create_table 'answer_years', force: :cascade do |t|
    t.integer 'question_year_id', null: false
    t.integer 'description', null: false
    t.boolean 'correct', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['question_year_id'], name: 'index_answer_years_on_question_year_id'
  end

  create_table 'answers', force: :cascade do |t|
    t.integer 'question_id', null: false
    t.string 'description', null: false
    t.boolean 'correct', default: false, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['question_id'], name: 'index_answers_on_question_id'
  end

  create_table 'answers_time_trials', force: :cascade do |t|
    t.integer 'questions_time_trial_id', null: false
    t.string 'description', null: false
    t.boolean 'correct', default: false, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['questions_time_trial_id'], name: 'index_answers_time_trials_on_questions_time_trial_id'
  end

  create_table 'level_years', force: :cascade do |t|
    t.integer 'planet_id', null: false
    t.integer 'number', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['planet_id'], name: 'index_level_years_on_planet_id'
  end

  create_table 'levels', force: :cascade do |t|
    t.integer 'planet_id', null: false
    t.integer 'number', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['planet_id'], name: 'index_levels_on_planet_id'
  end

  create_table 'planets', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'question_users', force: :cascade do |t|
    t.integer 'question_id', null: false
    t.integer 'user_id', null: false
    t.boolean 'correct', default: false, null: false
    t.index %w[question_id user_id], name: 'index_question_users_on_question_id_and_user_id', unique: true
    t.index ['question_id'], name: 'index_question_users_on_question_id'
    t.index ['user_id'], name: 'index_question_users_on_user_id'
  end

  create_table 'question_year_users', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'question_year_id', null: false
    t.boolean 'correct', default: false, null: false
    t.index ['question_year_id'], name: 'index_question_year_users_on_question_year_id'
    t.index ['user_id'], name: 'index_question_year_users_on_user_id'
  end

  create_table 'question_years', force: :cascade do |t|
    t.integer 'level_year_id', null: false
    t.string 'description', null: false
    t.integer 'scoreQuestion', default: 0
    t.integer 'correct_count', default: 0
    t.integer 'incorrect_count', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['level_year_id'], name: 'index_question_years_on_level_year_id'
  end

  create_table 'questions', force: :cascade do |t|
    t.integer 'level_id', null: false
    t.string 'description', null: false
    t.string 'why_is_wrong'
    t.integer 'scoreQuestion', default: 0
    t.integer 'correct_count', default: 0
    t.integer 'incorrect_count', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['level_id'], name: 'index_questions_on_level_id'
  end

  create_table 'questions_time_trials', force: :cascade do |t|
    t.string 'description', null: false
    t.integer 'scoreQuestion', default: 0
    t.integer 'correct_count', default: 0
    t.integer 'incorrect_count', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'password'
    t.integer 'score'
    t.integer 'score_time_trial'
    t.boolean 'see_correct'
    t.boolean 'is_admin'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_foreign_key 'answer_years', 'question_years'
  add_foreign_key 'answers', 'questions'
  add_foreign_key 'answers_time_trials', 'questions_time_trials'
  add_foreign_key 'level_years', 'planets'
  add_foreign_key 'levels', 'planets'
  add_foreign_key 'question_users', 'questions'
  add_foreign_key 'question_users', 'users'
  add_foreign_key 'question_year_users', 'question_years'
  add_foreign_key 'question_year_users', 'users'
  add_foreign_key 'question_years', 'level_years'
  add_foreign_key 'questions', 'levels'
end
