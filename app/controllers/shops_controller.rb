class ShopsController < ApplicationController

	def index
		@shops = Shop.all
	end

	def show
		@shop = Shop.find(params[:id]) 
	end

	def new
		@shop = Shop.new
	end

	def create
		@shop = Shop.create shop_params
		redirect_to shop_path(@shop)
	end

	def edit
		@shop = Shop.find(params[:id])
	end

	def update
		@shop = Shop.find(params[:id])
		@shop.update shop_params
		redirect_to shop_path(@shop)
	end

	def destroy
		Shop.find(params[:id]).destroy
		redirect_to root_path
	end

	private
    	def shop_params
      		params.require(:shop).permit(:title, :description, :quantity)
    	end

end
