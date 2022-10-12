# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    skip_password_validation { true }

    trait :student do
      school
    end

    trait :with_password do
      skip_password_validation { false }

      password { Faker::Internet.password(min_length: 8) }
      password_confirmation { password }
    end
  end
end
