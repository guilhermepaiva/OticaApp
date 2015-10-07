class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :client_id
      t.integer :quantity
      
      t.index [:user_id, :product_id, :client_id]

      t.timestamps null: false
    end
  end
end
