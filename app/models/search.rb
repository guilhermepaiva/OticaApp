class Search < ActiveRecord::Base

	def search_products

			products = Product.all

			products = products.where("brand like ?", "%#{keywords}%") if keywords.present?
			products = products.where("brand LIKE ?", "%#{brand}%") if brand.present?
			products = products.where("gender LIKE ?", gender) if gender.present?
			products = products.where("product_type LIKE ?", product_type) if product_type.present?
			products = products.where("price >= ?", min_price) if min_price.present?
			products = products.where("price <= ?", max_price) if max_price.present?

	  	return products
	end

end
