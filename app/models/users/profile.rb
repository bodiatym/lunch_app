# frozen_string_literal: true

module Users
  class Profile < ApplicationRecord
    validates :surname, :address, length: { minimum: 2 }, on: :update
    validates :phone, length: { minimum: 10 }, numericality: true, on: :update

    belongs_to :user
  end
end
