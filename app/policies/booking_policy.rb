class BookingPolicy < ApplicationPolicy

  def create?
    record.boat.user != user
  end

  def update?
    record.boat.user != user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
