class Product < ActiveRecord::Base
	#self.inheritance_column = nil #nao tenho certeza disso aqui, vi no stackoverflow
	#belongs_to :account
  has_many :orders
  has_many :clients, through: :orders
  has_many :users, through: :orders
  #has_many :attendance, through: :orders


  def self.search(query_brand)
  	where("brand LIKE ?", "%#{query_brand}%")
  end
  #this will work in development with SQLite. If you switch to PostgreSQL in production, you may need to change  LIKE to  ILIKE.
end
