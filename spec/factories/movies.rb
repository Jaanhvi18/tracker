# spec/factories/movies.rb
FactoryBot.define do
    factory :movie do
        name {"Inception"}
      duration{ 12323}
      language {'english'}
      director {'X'}
    end
  end