class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def update?
    return user_is_current_or_admin?
  end

  def destroy?
    return user_is_current_or_admin?
  end

  private

  def is_renter_or_owner?
    current_user == user || booking.kitchen.user == user
  end
end
