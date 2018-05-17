class CreateMealplans < ActiveRecord::Migration[5.1]
  def change
    create_table :mealplans do |t|
      t.integer :user_id
      t.date :date
      t.text :mealtype
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
