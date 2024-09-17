class CreateTimetrialTable < ActiveRecord::Migration[7.1]
  def change
    create_table :timesTrial do |t|
      t.integer :number, null: false

      t.timestamps
    end
  end
end
