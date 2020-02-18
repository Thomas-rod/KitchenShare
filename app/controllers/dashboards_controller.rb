class DashboardsController < ApplicationController

  def dashboard
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
