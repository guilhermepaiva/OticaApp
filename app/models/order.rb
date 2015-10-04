class Order < ActiveRecord::Base
  belongs_to :attendance
  belongs_to :product
end
