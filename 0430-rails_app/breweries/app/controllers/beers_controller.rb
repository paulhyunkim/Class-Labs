class BeersController < ApplicationController
	before_action :set_beer, only: [:edit, :update, :show, :destroy]

	def index
		@beers = Beer.all
	end

	def new
		@beer = Beer.new
	end

	def create
		@beer = Beer.new(params.require(:beer).permit(:name, :type, :brewer, :abv))
		if @beer.save
			redirect_to beers_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @beer.update_attributes(params.require(:beer).permit(:name, :type, :brewer, :abv))
			redirect_to beers_path
		else
			render 'edit'
		end
	end

	def destroy
		@beer.destroy
		redirect_to beers_path
	end


	private 
	def set_beer
		@beer = Beer.find(params[:id])
	end

end
