class Client < ActiveRecord::Base
  has_many :atendances
  has_many :users, through: :attendances
end
