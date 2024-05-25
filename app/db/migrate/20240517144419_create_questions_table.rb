class CreateQuestionsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.references :level, null: false, foreign_key: true
      t.string :description, null: false
      t.string :why_is_wrong
      t.integer :scoreQuestion, default: 0
      t.timestamps
    end
  end
end