# frozen_string_literal: true

# Migration to create the answers_time_trials table with the necessary fields
class CreateTimetrialAnswersTable < ActiveRecord::Migration[7.1]
  def change
    create_table :answers_time_trials do |t|
      t.references :questions_time_trial, null: false, foreign_key: true
      t.string :description, null: false
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
