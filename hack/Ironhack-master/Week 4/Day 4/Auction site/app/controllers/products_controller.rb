class ProductsController < ApplicationController
	def new
		@product = Product.new
	end

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		unless @product
			render 'product_not_found'
		end
	end

	def create
		@product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline]
		)

		if @product.save
			redirect_to "/products/#{@product.id}"
		else
			render 'new'
		end
	end

	def destroy
	end
end
