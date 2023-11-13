require 'rails_helper'

RSpec.feature "UserAuthentication", type: :feature do
  include Devise::Test::IntegrationHelpers

  context "happy path" do
    it "allows a user to sign up successfully" do
      visit new_user_registration_path
      fill_in "Email", with: "test@example.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button "Sign up"
      expect(page).to have_text("Welcome! You have signed up successfully.")
    end

    it "allows a user to sign in successfully" do
      user = FactoryBot.create(:user)
      visit new_user_session_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button "Log in"
      expect(page).to have_text("Signed in successfully.")
    end
  end
end

RSpec.feature "UserAuthentication", type: :feature do
    include Devise::Test::IntegrationHelpers
  
    context "sad path" do
      it "does not allow user to sign up with invalid data" do
        visit new_user_registration_path
        fill_in "Email", with: "test@example"
        fill_in "Password", with: "pass"
        fill_in "Password confirmation", with: "pass"
        click_button "Sign up"
        expect(page).to have_content("error prohibited this user from being saved")
      end

      it "does not allow user to sign in with wrong credentials" do
        user = FactoryBot.create(:user)
        visit new_user_session_path
        fill_in "Email", with: user.email
        fill_in "Password", with: "wrongpassword"
        click_button "Log in"
        expect(page).to have_current_path(new_user_session_path)
      end
    end
  end


  