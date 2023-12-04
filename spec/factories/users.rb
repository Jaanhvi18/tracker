# frozen_string_literal: true

# In spec/factories/users.rb
FactoryBot.define do
  factory :user do
    # Use sequence to ensure unique email for each generated user
    sequence(:email) { |n| "test#{n}@example.com" }
    password { 'password' }
    # Other attributes can be added here as needed
  end
end
