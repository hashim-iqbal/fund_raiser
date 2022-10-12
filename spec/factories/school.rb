# frozen_string_literal: true

FactoryBot.define do
  factory :school do
    name { Faker::Name.name }
    account_number { Faker::Number.number(digits: 10) }
  end
end

