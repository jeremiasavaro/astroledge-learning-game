class CreateQuestionsYearsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :questions_year_users do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :correct, default: false, null: false
    end
  end
end
