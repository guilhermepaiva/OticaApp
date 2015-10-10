class CreateSearchProducts < ActiveRecord::Migration
  def change
    create_table :search_products do |t|
      t.string :brand
      t.string :gender
      t.string :product_type
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps null: false
    end
  end
end
