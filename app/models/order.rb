class Order < ActiveRecord::Base
  #belongs_to :attendance comentado para mudar para relacionamento ternário
  belongs_to :user
  belongs_to :client
  belongs_to :product
  
end
