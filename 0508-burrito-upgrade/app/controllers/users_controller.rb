class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	User.create(params.require(:user).permit(:name, :email, :password))
    redirect_to root_path
  end
end
