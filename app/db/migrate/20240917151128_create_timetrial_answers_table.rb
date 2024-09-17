class CreateTimetrialAnswersTable < ActiveRecord::Migration[7.1]
  def change
    create_table :answersTimeTrial do |t|
      t.references :questionTimeTrial, null: false, foreign_key: true
      t.string :description, null: false
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
