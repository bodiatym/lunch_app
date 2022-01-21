# frozen_string_literal: true

class Meal < ApplicationRecord
  belongs_to :menu
  belongs_to :item
  has_many :order_meals, dependent: :restrict_with_error
  has_many :orders, through: :order_meals
end
