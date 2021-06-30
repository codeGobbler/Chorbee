# frozen_string_literal: true

# This will guess the User class
FactoryBot.define do
  factory :child do |f|
    f.name { Faker::Name.first_name }
    f.age { Faker::Number.number(digits: 1) }

    association :chores, factory: :chore
  end
end
