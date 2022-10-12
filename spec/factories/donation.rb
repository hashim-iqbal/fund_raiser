# frozen_string_literal: true

FactoryBot.define do
  factory :donation do
    amount { Faker::Number.number(digits: 3) }

    school
    user
  end
end


