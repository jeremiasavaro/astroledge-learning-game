class CreateTimetrialQuestionsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :questions_time_trials do |t|
      t.string :description, null: false
      t.integer :scoreQuestion, default: 0
      t.timestamps
    end
  end
end
