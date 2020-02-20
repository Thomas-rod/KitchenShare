class KitchensController < ApplicationController
  def index
    # if params[:query].present?
    #   @kitchens = Kitchen.where(city: params[:query])
    # else
    #   @kitchens = Kitchen.all
    # end
    @kitchens = Kitchen.geocoded
    @markers = @kitchens.map do |kitchen|
      {
        lat: kitchen.latitude,
        lng: kitchen.longitude
      }
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])
    @marker =
      [{
        lat: @kitchen.latitude,
        lng: @kitchen.longitude
      }]
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
        redirect_to kitchen_path(@kitchen)
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
    redirect_to kitchen_path(@kitchen)
  end

  def destroy
    @kitchen = kitchen.find(params[:id])
    @kitchen.destroy
    redirect_to dashboard_path
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:city, :address, :capacity, :description, :name, :equipment, :price_by_hour, photos: [])
  end
end
