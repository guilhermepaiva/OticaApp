class AddCnpjToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :cnpj, :string
  end
end
