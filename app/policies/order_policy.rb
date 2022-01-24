# frozen_string_literal: true

class OrderPolicy < ApplicationPolicy
  def create?
    true
  end
end

