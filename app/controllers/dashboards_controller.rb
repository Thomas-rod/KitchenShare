class DashboardsController < ApplicationController

  def dashboard
    @user = current_user
    # @kitchens = Kitchen.where(user: current_user)
  end
end
