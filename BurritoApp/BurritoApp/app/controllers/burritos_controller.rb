class BurritosController < ApplicationController
	before_action :set_burrito, only: [:edit, :update, :show, :destroy]
		
	def index
		@burritos = Burrito.all
	end

	def new
		@burrito = Burrito.new
		@burrito.order = Order.find(params[:id])
	end

	def create
		@burrito = Burrito.new(params.require(:burrito).permit(:rice, :beans, :meat, :extras))
		if @burrito.save
			redirect_to burritos_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @burrito.update_attributes(params.require(:burrito).permit(:rice, :beans, :meat, :extras))
			redirect_to burritos_path
		else
			render 'edit'
		end
	end

	def destroy
		@burrito.destroy
		redirect_to burritos_path
	end

	private

		def set_burrito
			@burrito = Burrito.find(params[:id])
		end
end
