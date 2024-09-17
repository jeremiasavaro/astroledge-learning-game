class CreateTimetrialAnswersTable < ActiveRecord::Migration[7.1]
  def change
    create_table :answer_time_trials do |t|
      t.references :question_time_trial, null: false, foreign_key: true
      t.string :description, null: false
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
