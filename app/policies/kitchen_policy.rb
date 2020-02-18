class KitchenPolicy < ApplicationPolicy
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

  def user_is_current_or_admin?
    current_user == user
  end
end
