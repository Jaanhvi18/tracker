# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PostCruds', type: :system do
  before do
    driven_by(:rack_test)
  end
  #     context "checking for presence of attribute" do
  #         it "should show post with created date" do
  #         @p3 = Post.create(description: "Movie 4")
  #         visit post_path(@p3.id)
  #         expect(page.current_path).to eq(post_path(@p3))
  #         expect(page).to have_content("Post created at")
  #         end
  #     end
  # =
  let!(:user) { create(:user) }

  let!(:user) { create(:user) }

  context 'when user is not logged in' do
    it 'stays on homepage' do
      visit root_path
      # The button "Create A Post" should not be present if the user is not signed in
      expect(page).not_to have_selector(:link_or_button, 'Create A Post')
      expect(page).to have_current_path(root_path)
    end
  end

  context 'when user is logged in' do
    before do
      sign_in(user)
    end

  it 'stays on homepage if user not logged in' do
    if @current_user.nil?
      visit root_path
      # click_on "Create A Post"  --> cannot click on ghis because user is not aigned in
      expect(page).to have_current_path(root_path)
    end
  end



  it 'creates a post and associates it with a movie' do
    # Log in the user
    visit new_post_path
    sign_in(user)

    # Visit the new post form
    visit new_post_path

    # Fill in the post form
    fill_in 'post_title', with: 'Great Post', wait: 10
    fill_in 'post_description', with: 'This is an awesome post!'
    fill_in 'post_stars', with: 2
    select 'movie', from: 'post_media_type' # Assuming you have a select box for associating a movie

    # Click the submit button
    click_button 'Create Post'

    # Expectations
    expect(page).to have_content('This is an awesome post!')
    expect(page).to have_content('Stars:')
    expect(page).to have_current_path(profile_path)
  end
end
end
