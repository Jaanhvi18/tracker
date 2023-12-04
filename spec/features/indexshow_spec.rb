# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Indexshows', type: :feature do
  context 'The home index of dashboards page' do
    it 'should be on the home index of dashboards path' do
      visit '/'
      expect(page).to have_current_path(root_path) # change Routes.rb in next iteration
    end
    it 'should display Gallery and Profile' do
      visit '/'
      expect(page.text).to have_content(/Gallery/i)
      expect(page.text).to have_content(/Profile/i)
    end
  end

  context 'The Gallery page' do # change specifics onces gallery is set up
    it 'should be on the gallery page path' do
      visit '/'
      expect(page).to have_current_path(root_path)
    end
    it 'should display Gallery and Profile' do
      visit '/'
      expect(page.text).to have_content(/Gallery/i)
    end
  end

  context 'The Profile page' do # change specifics once profile is set up
    it 'should be on the profile page path' do
      visit '/'
      expect(page).to have_current_path(root_path)
    end
    it 'should display Gallery and Profile' do
      visit '/'
      expect(page.text).to have_content(/Profile/i)
    end
  end
end
