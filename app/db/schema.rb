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

ActiveRecord::Schema[7.1].define(version: 2024_09_17_151128) do
  create_table "answers", force: :cascade do |t|
    t.integer "question_id", null: false
    t.string "description", null: false
    t.boolean "correct", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "answersTimeTrial", force: :cascade do |t|
    t.integer "questionTimeTrial_id", null: false
    t.string "description", null: false
    t.boolean "correct", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionTimeTrial_id"], name: "index_answersTimeTrial_on_questionTimeTrial_id"
  end

  create_table "answersYear", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answersYear_on_question_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "planet_id", null: false
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_levels_on_planet_id"
  end

  create_table "levelsYear", force: :cascade do |t|
    t.integer "planet_id", null: false
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_levelsYear_on_planet_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_users", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "user_id", null: false
    t.boolean "correct", default: false, null: false
    t.index ["question_id", "user_id"], name: "index_question_users_on_question_id_and_user_id", unique: true
    t.index ["question_id"], name: "index_question_users_on_question_id"
    t.index ["user_id"], name: "index_question_users_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "level_id", null: false
    t.string "description", null: false
    t.string "why_is_wrong"
    t.integer "scoreQuestion", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_questions_on_level_id"
  end

  create_table "questionsTimeTrial", force: :cascade do |t|
    t.integer "timeTrial_id", null: false
    t.string "description", null: false
    t.integer "scoreQuestion", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["timeTrial_id"], name: "index_questionsTimeTrial_on_timeTrial_id"
  end

  create_table "questionsYear", force: :cascade do |t|
    t.integer "levelYear_id", null: false
    t.string "description", null: false
    t.integer "scoreQuestion", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["levelYear_id"], name: "index_questionsYear_on_levelYear_id"
  end

  create_table "timesTrial", force: :cascade do |t|
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "score"
    t.integer "score_time_trial"
    t.boolean "see_correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answersTimeTrial", "questionTimeTrials"
  add_foreign_key "answersYear", "questions"
  add_foreign_key "levels", "planets"
  add_foreign_key "levelsYear", "planets"
  add_foreign_key "question_users", "questions"
  add_foreign_key "question_users", "users"
  add_foreign_key "questions", "levels"
  add_foreign_key "questionsTimeTrial", "timeTrials"
  add_foreign_key "questionsYear", "levelYears"
end
