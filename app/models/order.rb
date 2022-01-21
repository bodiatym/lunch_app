# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_meals, dependent: :restrict_with_error
  has_many :meals, through: :order_meals
  belongs_to :user
end
