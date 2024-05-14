class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :score
      t.integer :actual_level

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
