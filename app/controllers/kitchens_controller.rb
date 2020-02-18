class KitchensController < ApplicationController
  before_action :set_kitchen, only: [:show, :edit, :update, :destroy]

  def index
    @kitchens = Kitchen.all
  end

  def show
  end

  def new
    authorize @kitchen
    @kitchen = Kitchen.new
  end

  def create
    authorize @kitchen
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
  end

  def update
    @kitchen.update(kitchen_params)
    redirect_to kitchen_path
  end

  def destroy
    @kitchen.destroy
    redirect_to dashboard_path
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:city, :address, :capacity, :description, :name, :equipment, :price_by_hour)
  end

  def set_kitchen
    @kitchen = Kitchen.find(params[:id])
    authorize @kitchen
  end
end
