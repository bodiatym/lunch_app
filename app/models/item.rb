# frozen_string_literal: true

class Item < ApplicationRecord
  enum course: {
    first: FIRST = 'first',
    main: MAIN = 'main',
    drink: DRINK = 'drink'
  }, _suffix: true

  has_many :menu_items, dependent: :restrict_with_error
  has_many :menus, through: :menu_items
  has_many :order_items, dependent: :restrict_with_error
  has_many :orders, through: :order_items
end
