class EmailsController < ApplicationController

	def new
		@email = Email.new
	end

	def create
		@email = Email.new(params.require(:email).permit(:name, :address))
		if @email.save
			Mailer.welcome(@email).deliver
			redirect_to :back
		else
			render 'emailform'
		end
	end

end