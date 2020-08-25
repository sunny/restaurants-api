class RestaurantPolicy < ApplicationPolicy
  def update?
    user == record.user
  end

  def show?
    true
  end

  def index?
    true
  end

  def create?
    update?
  end

  def destroy?
    update?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
