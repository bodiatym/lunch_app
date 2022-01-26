# frozen_string_literal: true

FactoryBot.define do
  factory :meal do
    price { 10 }

    association :item, factory: :item, strategy: :build
    association :menu, factory: :menu, strategy: :build
  end
end
