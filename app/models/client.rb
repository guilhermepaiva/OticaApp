class Client < ActiveRecord::Base
  #self.inheritance_column = nil #nao tenho certeza disso aqui, vi no stackoverflow
  has_many :atendances
  has_many :users, through: :attendances
	
	#belongs_to :account
end
