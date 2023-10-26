require 'rails_helper'
RSpec.describe Home, type: :model do
  context "The home page" do
    it "should be on the home page path" do
      expect(page).to have_current_path(root) #change Routes.rb in next iteration
    end
    it "should display Gallery and Profile" do
      expect(page).to have_content(/Gallery/i)
      expect(page).to have_content(/Profile/i)
    end
  end

  context "The Gallery page" do #change specifics onces gallery is set up
    it "should be on the gallery page path" do
      expect(page).to have_current_path(root)
    end
    it "should display Gallery and Profile" do 
      expect(page).to have_content(/Gallery/i)
    end
  end
  
  context "The Profile page" do #change specifics once profile is set up
    it "should be on the profile page path" do
      expect(page).to have_current_path(root)
    end
    it "should display Gallery and Profile" do
      expect(page).to have_content(/Profile/i)
    end
  end
end