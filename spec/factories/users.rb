# frozen_string_literal: true

# In spec/factories/users.rb
FactoryBot.define do
  factory :user do
    email { 'test@example.com' }
    password { 'password' }
    # Other attributes can be added here as needed
  end
end
