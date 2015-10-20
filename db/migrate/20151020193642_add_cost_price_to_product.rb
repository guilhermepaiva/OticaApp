class AddCostPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :cost_price, :decimal
  end
end
