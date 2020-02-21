require 'time'

class DashboardsController < ApplicationController

  def dashboard
    @bookings = Booking.where(["user_id = ?", current_user])
    #@bookings_comming = @bookings.where(["accepted = ?", 'accepted'])
    @bookings_comming = @bookings.where("start_time > ?", Time.now)
    @bookings_pending = @bookings.where("accepted != ?", 'accepted')
    @bookings_past = @bookings.where("start_time < ?", Time.now)
    if user_signed_in?
      @user = current_user
      # Exexute some code if user is connected
    else
      redirect_to root_path
    end
    # raise
    # @kitchens = Kitchen.where(user: current_user)
  end

end
