# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    basic: BASIC = 'basic',
    admin: ADMIN = 'admin'
  }

  has_one :profile, dependent: :destroy, class_name: 'Users::Profile'

  def owner?(obj)
    obj.user == self
  end
end
