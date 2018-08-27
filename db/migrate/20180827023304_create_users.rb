class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :education
      t.integer :salary
      t.integer :role

      t.timestamps
    end
  end
end
