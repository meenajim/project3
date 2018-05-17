class CreateServingguides < ActiveRecord::Migration[5.1]
  def change
    create_table :servingguides do |t|
      t.integer :usercategory_id
      t.integer :age
      t.integer :veg
      t.integer :fruit
      t.integer :grain
      t.integer :meat
      t.integer :milk
      t.integer :additional_serve

      t.timestamps
    end
  end
end
