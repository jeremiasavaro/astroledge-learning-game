# frozen_string_literal: true

# Migration to create the question_years table with the necessary fields
class CreateQuestionsYearTable < ActiveRecord::Migration[7.1]
  def change
    create_table :question_years do |t|
      t.references :level_year, null: false, foreign_key: true
      t.string :description, null: false
      t.integer :scoreQuestion, default: 0
      t.integer :correct_count, default: 0
      t.integer :incorrect_count, default: 0
      t.timestamps
    end
  end
end
