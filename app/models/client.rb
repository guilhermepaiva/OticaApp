class Client < ActiveRecord::Base
  #self.inheritance_column = nil #nao tenho certeza disso aqui, vi no stackoverflow
  #has_many :atendances
  #has_many :users, through: :attendances
  has_many :orders
  has_many :products, through: :orders
  has_many :users, through: :orders
  
	#belongs_to :account
end
