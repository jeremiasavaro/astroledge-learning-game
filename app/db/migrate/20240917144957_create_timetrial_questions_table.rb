# frozen_string_literal: true

# Migration to create the questions_time_trials table with the necessary fields
class CreateTimetrialQuestionsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :questions_time_trials do |t|
      t.string :description, null: false
      t.integer :scoreQuestion, default: 0
      t.integer :correct_count, default: 0
      t.integer :incorrect_count, default: 0
      t.timestamps
    end
  end
end
