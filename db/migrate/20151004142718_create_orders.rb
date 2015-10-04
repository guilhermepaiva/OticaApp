class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :attendance_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
