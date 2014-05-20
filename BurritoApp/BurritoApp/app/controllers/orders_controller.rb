class OrdersController < ApplicationController
	before_action :set_order, only: [:edit, :update, :show, :destroy]
		
	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(params.require(:order).permit(:name, :time))
		if @order.save
			redirect_to orders_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @order.update_attributes(params.require(:order).permit(:name, :time))
			redirect_to orders_path
		else
			render 'edit'
		end
	end

	def destroy
		@order.destroy
		redirect_to orders_path
	end

	private

		def set_order
			@order = Order.find(params[:id])
		end
end
