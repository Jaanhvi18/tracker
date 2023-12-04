# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Show, type: :model do
  context 'validations check- ' do
    it 'name provided ' do
      s1 = Show.new(name: 'Dark')
      expect(s1).to be_valid
    end
    it 'name not provided ' do
      s0 = Show.new(seasons: 2)
      expect(s0).not_to be_valid
      s1 = Show.new(name: nil)
      expect(s1).not_to be_valid
    end
    it 'Release provided ' do
      show1 = Show.new(name: 'Gilmore Girls', release_date: 10 / 23 / 20)
      expect(show1).to be_valid
      expect(show1.release_date).to eq(10 / 23 / 20)
    end
    it 'Description provided ' do
      show1 = Show.new(name: 'Gilmore Girls', description: 'It was a great show!')
      expect(show1).to be_valid
      expect(show1.description).to eq('It was a great show!')
    end
    it 'Episodes provided ' do
      show1 = Show.new(name: 'Gilmore Girls', episodes: 40)
      expect(show1).to be_valid
      expect(show1.episodes).to eq(40)
    end
    it 'Seasons provided ' do
      show1 = Show.new(name: 'Gilmore Girls', seasons: 10)
      expect(show1).to be_valid
      expect(show1.seasons).to eq(10)
    end
    it 'Director provided ' do
      show1 = Show.new(name: 'Gilmore Girls', director: 'Timothy Justin')
      expect(show1).to be_valid
      expect(show1.director).to eq('Timothy Justin')
    end
    it 'On-going provided ' do
      show1 = Show.new(name: 'Gilmore Girls', on_going: false)
      expect(show1).to be_valid
      expect(show1.on_going).to eq(false)
    end
  end
end
