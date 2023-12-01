# spec/factories/galleries.rb
FactoryBot.define do
  factory :gallery do
    # Define attributes for gallery
    # Example:
    # name { "My Gallery" }

    # Create gallery with associated posts
    after(:create) do |gallery, evaluator|
      create_list(:post, 2, :with_movie, gallery: gallery)
      create_list(:post, 2, :with_game, gallery: gallery)
      create_list(:post, 1, :with_show, gallery: gallery)
    end
  end
end