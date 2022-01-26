# frozen_string_literal: true

FactoryBot.define do
  factory :menu do
    date { Date.current }

    trait :with_items do
      after(:build) do |menu|
        menu.items << FactoryBot.build(:item, :first_course)
      end
    end
  end
end
