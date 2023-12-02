# frozen_string_literal: true

# spec/factories/movies.rb
FactoryBot.define do
  factory :movie do
    name { 'Inception' }
    duration { 12_323 }
    language { 'english' }
    director { 'X' }
  end
end
