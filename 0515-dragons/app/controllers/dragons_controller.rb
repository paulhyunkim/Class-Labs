class DragonsController < ApplicationController
  before_action :authenticate_user

  def index
  	@dragons = Dragon.all
  end

  def new
    @user = current_user
  	@dragon = Dragon.new
    
  end

  def create
    @user = current_user
  	@dragon = current_user.dragons.new(params.require(:dragon).permit(:name, :size, :color, :age, :is_firebreathing))
  	if @dragon.save
  		redirect_to dragon_path(@dragon)
  	else
  		flash[:error] = "The egg didn't hatch. Try again."
  		render 'new'
  	end
  end

  def show
  	@dragon = Dragon.find(params[:id])
  end

  def edit
    @dragon = Dragon.find(params[:id])
  end

  def update
  end

  def destroy
    Dragon.find(params[:id]).destroy
    redirect_to dragons_path
  end


  private
  def verify_logged_in
    if !current_user
      flash[:error] = "You must log in before you can see the dragons!"
      redirect_to new_session_path
    end
  end

end
