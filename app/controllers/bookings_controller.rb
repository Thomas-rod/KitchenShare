class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(:kitchen_id = params[:kitchen_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking.kitchen_id = @kitchen
    @booking.user_id = @user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
  params.require(:booking).permit(:start_time, :end_time)
  end

end
