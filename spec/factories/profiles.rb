# spec/factories/profiles.rb
FactoryBot.define do
    factory :profile do
      association :user  # Ensures a User is created for each Profile
      bio { "My biography text" }  # Sample bio text
  
      # Include other attributes if your Profile model has them
      # For example:
      # nickname { "MyNickname" }
    end
  end
  