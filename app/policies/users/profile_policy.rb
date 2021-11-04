module Users
  class ProfilePolicy < ApplicationPolicy
    def index?
      false
    end

    def show?
      false
    end
  end
end
