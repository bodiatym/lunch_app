# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@email.com" }

    name     { 'test' }
    password { '123456' }
    role     { 'basic' }

    trait :admin do
      role { 'admin' }
    end
    trait :with_profile do
      association :profile, factory: :profile, strategy: :build
    end
  end
end
