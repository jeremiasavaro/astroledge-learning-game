# frozen_string_literal: true

# Migration to create the question_year_users table with the necessary fields
class CreateQuestionsYearsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :question_year_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :question_year, null: false, foreign_key: true
      t.boolean :correct, default: false, null: false
    end
  end
end
