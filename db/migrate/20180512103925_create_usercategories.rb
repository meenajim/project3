class CreateUsercategories < ActiveRecord::Migration[5.1]
  def change
    create_table :usercategories do |t|
      t.text :category

      t.timestamps
    end
  end
end
