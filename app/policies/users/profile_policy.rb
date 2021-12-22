# frozen_string_literal: true

module Users
  class ProfilePolicy < ApplicationPolicy
    def show?
      true
    end

    def edit?
      user.admin_role? || user.owner?(record)
    end

    def update?
      edit?
    end
  end
end
