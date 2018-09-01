class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :education
      t.float :salary
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
