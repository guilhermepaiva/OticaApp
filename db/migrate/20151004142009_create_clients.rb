class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :cpf
      t.string :rg
      t.string :adress
      t.integer :rate

      t.timestamps null: false
    end
  end
end
