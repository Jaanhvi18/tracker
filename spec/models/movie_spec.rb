# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  context 'validations check- ' do
    it 'name provided ' do
      movie1 = Movie.new(name: 'FNF2')
      expect(movie1).to be_valid
    end
    it 'name not provided ' do
      movie0 = Movie.new(director: 'adam')
      expect(movie0).not_to be_valid
      movie1 = Movie.new(name: nil)
      expect(movie1).not_to be_valid
    end

    it 'Release provided ' do
      movie1 = Movie.new(name: 'FNF2', release_date: 10 / 23 / 20)
      expect(movie1).to be_valid
      expect(movie1.release_date).to eq(10 / 23 / 20)
    end
    it 'Description provided ' do
      movie1 = Movie.new(name: 'FNF2', description: 'It was a great movie!')
      expect(movie1).to be_valid
      expect(movie1.description).to eq('It was a great movie!')
    end
    it 'Duration provided ' do
      movie1 = Movie.new(name: 'FNF2', duration: 53)
      expect(movie1).to be_valid
      expect(movie1.duration).to eq(53)
    end
    it 'Language provided ' do
      movie1 = Movie.new(name: 'FNF2', language: 'English')
      expect(movie1).to be_valid
      expect(movie1.language).to eq('English')
    end
    it 'Director provided ' do
      movie1 = Movie.new(name: 'FNF2', director: 'Timothy Smith')
      expect(movie1).to be_valid
      expect(movie1.director).to eq('Timothy Smith')
    end
  end
end
