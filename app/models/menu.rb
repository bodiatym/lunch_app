# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :menu_items, dependent: :restrict_with_error
  has_many :items, through: :menu_items
end
