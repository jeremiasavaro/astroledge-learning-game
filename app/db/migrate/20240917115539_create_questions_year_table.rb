class CreateQuestionsYearTable < ActiveRecord::Migration[7.1]
  def change
    create_table :question_years do |t|
      t.references :level_year, null: false, foreign_key: true
      t.string :description, null: false
      t.integer :scoreQuestion, default: 0
      t.timestamps
    end
  end
end
