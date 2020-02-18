class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
    @user = current_user
  end

  def create
    @user = current_user
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = @user
      if @kitchen.save
        redirect_to dashboard_path
      else
        render :new
      end
  end

  def edit
    @kitchen = Kitchen.find(params[:id])
  end

  def update
    @kitchen = Kitchen.find(params[:id])
    @kitchen.update(kitchen_params)
    redirect_to kitchen_path
  end

  def destroy
    @kitchen = kitchen.find(params[:id])
    @kitchen.destroy
    redirect_to dashboard_path
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:city, :address, :capacity, :description, :name, :equipment, :price_by_hour)
  end
end
