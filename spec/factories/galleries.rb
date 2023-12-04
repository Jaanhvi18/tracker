# spec/factories/galleries.rb
FactoryBot.define do
  factory :gallery do
    sequence(:name) { |n| "My Gallery #{n}" } # Ensures unique names

    # Create gallery with associated posts
    after(:create) do |gallery, evaluator|
      create_list(:post, evaluator.movies_count || 2, :with_movie, gallery: gallery)
      create_list(:post, evaluator.games_count || 2, :with_game, gallery: gallery)
      create_list(:post, evaluator.shows_count || 1, :with_show, gallery: gallery)
    end

    transient do
      movies_count { 2 }
      games_count { 2 }
      shows_count { 1 }
    end
  end
end
