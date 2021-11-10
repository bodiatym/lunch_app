# frozen_string_literal: true

module Users
  class ProfilePolicy < ApplicationPolicy
    def index?
      false
    end

    def show?
      user.admin_role? || user.owner?(record)
    end
  end
end
