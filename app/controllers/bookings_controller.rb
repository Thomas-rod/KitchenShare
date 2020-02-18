class BookingsController < ApplicationController
  def index
    # @bookings = Booking.where(kitchen_id: params[:kitchen_id])
    # dans Dashboard, @my_bookings = current_user.bookings
  end

  def show
    authorize @booking
    @booking = Booking.find(params[:id])
  end

  def new
    authorize @booking
    @booking = Booking.new
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def create
    authorize @booking
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
