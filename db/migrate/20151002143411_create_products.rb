class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.integer :size
      t.string :reference
      t.string :gender
      t.string :type
      t.decimal :price

      t.timestamps null: false
    end
  end
end
