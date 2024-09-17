class CreateTimetrialQuestionTable < ActiveRecord::Migration[7.1]
  def change
    create_table :questionsTimeTrial do |t|
      t.references :timeTrial, null: false, foreign_key: true
      t.string :description, null: false
      t.integer :scoreQuestion, default: 0
      t.timestamps
    end
  end
end
