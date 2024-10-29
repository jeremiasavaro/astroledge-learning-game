# frozen_string_literal: true

# Migration to create the question_users table with the necessary fields
class CreateTableQuestionsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :question_users do |t| # Cambio de 'questionsUsers' a 'question_users'
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :correct, null: false, default: false
    end

    add_index :question_users, %i[question_id user_id], unique: true # Cambio de 'questions_users' a 'question_users'
  end
end
