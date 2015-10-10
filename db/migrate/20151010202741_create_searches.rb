class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :brand
      t.string :gender
      t.string :product_type
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps null: false
    end
  end
end
