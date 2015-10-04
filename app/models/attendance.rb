class Attendance < ActiveRecord::Base
  belongs_to :account
  belongs_to :user
  belongs_to :client
  has_many :orders
  has_many :products, through: :orders
end
