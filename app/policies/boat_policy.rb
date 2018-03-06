class BoatPolicy < ApplicationPolicy
  def create?
    true
  end

  def update?
    user == record.user
  end

  def delete?
    update?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
