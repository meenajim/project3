class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
