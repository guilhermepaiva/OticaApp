class CartController < ApplicationController
  before_action :authenticate_user!
  
  def add
    id = params[:id]
    
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    product = Product.find(id)
    redirect_to products_path(:page => params[:page])
  end
  
  def clear
    session[:cart] = nil
    redirect_to '#'
  end
  
  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
    
  end
  
end
