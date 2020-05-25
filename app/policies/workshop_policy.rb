class WorkshopPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      user.present? && (record.user == user || user.admin?)
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end
  end
end
