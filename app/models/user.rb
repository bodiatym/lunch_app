# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { basic: 0, admin: 1 }, _suffix: :role
  after_create :build_profile
  has_one :profile, dependent: :destroy

  private

  def build_profile
    User::Profile.create(user: self)
  end
end
