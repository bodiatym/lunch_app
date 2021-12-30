# frozen_string_literal: true

FactoryBot.define do
  factory :profile, class: 'Users::Profile' do
    surname { 'test' }
    address { 'test' }
    phone { '1234567890' }
    user { create(:user) }
  end
end
