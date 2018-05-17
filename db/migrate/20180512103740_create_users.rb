class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.string :password_digest
      t.integer :usercategory_id
      t.date :dob
      t.text :email
      t.integer :family_id

      t.timestamps
    end
  end
end
