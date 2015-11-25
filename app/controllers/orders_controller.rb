class OrdersController < ApplicationController

  def index 
    @orders = Order.all
  end


  def new
    @user = current_user
    @client = Client.find(params[:client])
    @order = Order.new
    
  end
  
  # POST /products
  # POST /products.json
  def create
    @order = Order.new(order_params)
    cart = session[:cart]
    cart.each do |id, quantity|
      # Quando o estoque for implementado:
      product = Product.find(id)
      stock_decremented = product.stock_quantity - quantity
      product.update_attribute(:stock_quantity, stock_decremented)
      if !Order.create!(user_id: current_user.id, client_id: params[:order][:client], product_id: id, quantity: quantity, order_type: order_type)
        @order.save
        respond_to do |format|
          format.html { render :new}
        end
      end
    end
    session[:cart] = nil
    respond_to do |format|
      format.html { redirect_to products_path, notice: 'Venda efetuada com sucesso!' }
    end
  end
  
  def choose_products
    @products = Product.all
  end

  def order_params
      params.require(:order).permit(:order_type)
    end
  
  
end
