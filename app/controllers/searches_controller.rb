class SearchesController < ApplicationController

  def index
    @search = Search.search_products
  end

  def new
    @search = Search.new
  	@genders = Product.uniq.pluck(:gender)
  	@product_types = Product.uniq.pluck(:product_type)
  end

  def create
  	#@search = Search.create(search_params)
    @search = Search.search_products(search_params)
  		redirect_to @search
  end

  def show
  	@search = Search.find(params[:id])
  end

  private
  	def search_params
  		params.require(:search).permit(:keywords, :brand, :gender, :product_type, :min_price, :max_price)
  	end

end
