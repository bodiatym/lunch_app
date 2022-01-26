# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    name { 'test' }
    course { 'main' }

    trait :first_course do
      course { 'first' }
    end
  end
end
