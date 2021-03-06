class KitchensController < ApplicationController
  def index
    if params[:query].present?
      # @kitchens = Kitchen.where(address: params[:query_address])
      @kitchens = Kitchen.where(city: params[:query]).geocoded
    else
      @kitchens = Kitchen.all
    end
    @markers = @kitchens.map do |kitchen|
      {
        lat: kitchen.latitude,
        lng: kitchen.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { kitchen: kitchen }),
        image_url: helpers.asset_url('cook-icon.png')
      }
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])
    @marker =
      [{
        lat: @kitchen.latitude,
        lng: @kitchen.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { kitchen: @kitchen }),
        image_url: helpers.asset_url('cook-icon.png')
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
