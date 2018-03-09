class ProfilePolicy < ApplicationPolicy
  def create?
    record.user == user
  end

  def update?
    create?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
