# frozen_string_literal: true

class MenuPolicy < ApplicationPolicy
  def show?
    true
  end

  def index?
    true
  end
end
