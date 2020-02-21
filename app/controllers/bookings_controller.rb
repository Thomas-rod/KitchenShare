class BookingsController < ApplicationController

  def index
    # @bookings = Booking.where(kitchen_id: params[:kitchen_id])
    # dans Dashboard, @my_bookings = current_user.bookings
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
    @booking.kitchen = @kitchen
    @booking.user = @user
    if @booking.save
      flash[:notice] = "Votre réservation a bien été enregistrée"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
  params.require(:booking).permit(:start_time, :end_time, :number_of_people)
  end

end
