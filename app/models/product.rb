class Product < ActiveRecord::Base
	#self.inheritance_column = nil #nao tenho certeza disso aqui, vi no stackoverflow
	#belongs_to :account
  has_many :orders
  has_many :attendance, through: :orders
end
