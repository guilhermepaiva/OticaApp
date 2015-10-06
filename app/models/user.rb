class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #has_many :attendances
  #has_many :clients, through: :attendances
  has_many :orders
  has_many :clients, through: :orders
  has_many :products, through: :orders
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  
  
end
