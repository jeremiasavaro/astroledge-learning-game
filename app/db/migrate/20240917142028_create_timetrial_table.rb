class CreateTimetrialTable < ActiveRecord::Migration[7.1]
  def change
    create_table :time_trials do |t|
      t.integer :number, null: false
      t.timestamps
    end
  end
end
