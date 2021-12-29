class Order < ApplicationRecord
  has_many :order_items, dependent: :restrict_with_error
  has_many :items, through: :order_items
  belongs_to :user
end
