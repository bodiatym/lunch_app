module Users
  class ProfilePolicy < ApplicationPolicy
    def index?
      false
    end

    def show?
      true
    end
  end
end
