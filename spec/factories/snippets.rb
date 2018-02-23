FactoryBot.define do
  factory :snippet do
    value { Faker::String.random }
  end
end