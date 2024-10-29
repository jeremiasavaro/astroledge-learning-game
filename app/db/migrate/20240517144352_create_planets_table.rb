# frozen_string_literal: true

# Migration to create the planets table with the necessary fields
class CreatePlanetsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :planets do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
