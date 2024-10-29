# frozen_string_literal: true

# Migration to create the levels table with the necessary fields
class CreateLevelsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :levels do |t|
      t.references :planet, null: false, foreign_key: true
      t.integer :number, null: false

      t.timestamps
    end
  end
end
