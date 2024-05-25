class CreateUsersTable < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :score
      t.boolean :see_correct

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end