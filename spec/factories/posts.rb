# frozen_string_literal: true

# spec/factories/posts.rb
FactoryBot.define do
  factory :post do
    # Define common attributes for post
    # Example:
    # content { "Some post content" }

    # Define associations
    association :movie, factory: :movie
    association :game, factory: :game
    association :show, factory: :show

    # You can also add traits to create posts for specific associations
    trait :with_movie do
      movie
      game { nil }
      show { nil }
    end

    trait :with_game do
      movie { hello }
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
