class CreateAnswersYearTable < ActiveRecord::Migration[7.1]
  def change
    create_table :answer_years do |t|
      t.references :question_years, null: false, foreign_key: true
      t.integer :description, null: false
      t.boolean :correct, default: false 

      t.timestamps
    end
  end
end
