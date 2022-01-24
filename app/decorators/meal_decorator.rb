# frozen_string_literal: true

class MealDecorator < ApplicationDecorator
  delegate_all

  def name_with_price
    "#{object.name} #{object.price}$"
  end
end
