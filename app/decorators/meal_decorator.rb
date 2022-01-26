# frozen_string_literal: true

class MealDecorator < ApplicationDecorator
  delegate_all
  delegate :name, to: :item

  def name_with_price
    "#{name} #{price}$"
  end
end
