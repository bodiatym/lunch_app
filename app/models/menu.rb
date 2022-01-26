# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :meals, dependent: :restrict_with_error
  has_many :items, through: :meals
end
