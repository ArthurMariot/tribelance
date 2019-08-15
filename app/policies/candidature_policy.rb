class CandidaturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    create?
  end

  def create?
    true
  end

  def update?
    record.mission.user == user
  end
end
