class OrdersController < ApplicationController
  
  def new
    @user=current_user
    @client = Client.find(params[:client])
    
  end
  
end
