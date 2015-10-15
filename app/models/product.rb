class Product < ActiveRecord::Base
	#self.inheritance_column = nil #nao tenho certeza disso aqui, vi no stackoverflow
	#belongs_to :account
  has_many :orders
  has_many :clients, through: :orders
  has_many :users, through: :orders
  #has_many :attendance, through: :orders
  
  #Definindo os scopes.
  #Cada scope pode ser chamado como um método no controller
  scope :gender, -> (gender) { where("gender like ?", "#{gender}%") }
  scope :product_type, -> (product_type) { where("product_type like ?", "#{product_type}%") }
  scope :brand, -> (brand) { where("brand like ?", "#{brand}%")}
  scope :price_max, -> (price_max) { where("price <= ?", "#{price_max}")}
  scope :price_min, -> (price_min) { where("price >= ?", "#{price_min}")}
  
end
