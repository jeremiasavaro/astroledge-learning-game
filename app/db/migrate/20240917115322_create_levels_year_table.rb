# frozen_string_literal: true

# Migration to create the level_years table with the necessary fields
class CreateLevelsYearTable < ActiveRecord::Migration[7.1]
  def change
    create_table :level_years do |t|
      t.references :planet, null: false, foreign_key: true
      t.integer :number, null: false

      t.timestamps
    end
  end
end
