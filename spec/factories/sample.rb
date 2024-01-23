# frozen_string_literal: true

FactoryBot.define do
  factory :sample do
    name { Faker::Name.name }
  end
end
