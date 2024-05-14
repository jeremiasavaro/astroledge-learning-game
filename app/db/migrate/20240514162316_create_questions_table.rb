class CreateQuestionsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.references :level, null: false, foreign_key: true
      t.string :description, null: false

      t.timestamps
    end
  end
end
