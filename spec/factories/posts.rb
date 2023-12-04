# frozen_string_literal: true

# spec/factories/posts.rb
FactoryBot.define do
  factory :post do
    association :user
    description { "Post Description" }
    stars { 5 }  # Example, set this as per your requirement
    
    # Define associations
    association :movie, factory: :movie, optional: true
    association :game, factory: :game, optional: true
    association :show, factory: :show, optional: true

    # Traits for each media type
    trait :with_movie do
      movie
      game { nil }
      show { nil }
    end

    trait :with_game do
      movie { nil }
      game
      show { nil }
    end




    trait :with_show do
      movie { nil }
      game { nil }
      show
    end
  end
end
