# frozen_string_literal: true

module Users
  class ProfilePolicy < ApplicationPolicy
    def show?
      user.admin? || user.owner?(record)
    end

    def edit?
      user.admin? || user.owner?(record)
    end

    def update?
      edit?
    end
  end
end
