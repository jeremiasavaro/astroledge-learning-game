class CreateAnswersYearTable < ActiveRecord::Migration[7.1]
  def change
    create_table :answersYear do |t|
      t.references :question, null: false, foreign_key: true
      t.integer :description, null: false

      t.timestamps
    end
  end
end
