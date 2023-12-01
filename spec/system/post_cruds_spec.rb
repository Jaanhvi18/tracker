require 'rails_helper'

RSpec.describe "PostCruds", type: :system do
  before do
    driven_by(:rack_test)
  end
=begin
    context "checking for presence of attribute" do
        it "should show post with created date" do 
        @p3 = Post.create(description: "Movie 4")
        visit post_path(@p3.id)
        expect(page.current_path).to eq(post_path(@p3))
        expect(page).to have_content("Post created at")
        end
    end
=end 
  
  let!(:user) { create(:user) }

  it 'stays on homepage if user not logged in' do
    if @current_user.nil?
      visit root_path
      click_on "Create A Post"
      expect(page). to have_current_path(root_path)
    end
  end
# it 'creates a post and associates it with a movie' do
#   # Log in the user
#   sign_in(user)

#   # Visit the new post form
#   visit new_post_path

#   # Fill in the post form
#   fill_in 'post_title', with: 'Great Post', wait: 10
#   fill_in 'post_description', with: 'This is an awesome post!'
#   fill_in 'post_stars', with: 2
#   select 'movie', from: 'post_media_type'  # Assuming you have a select box for associating a movie

#   # Click the submit button
#   click_button 'Create Post'

#   # Expectations
#   expect(page).to have_content('This is an awesome post!')
#   expect(page).to have_content('Stars:')
#   expect(page).to have_current_path(profile_path)
  
#   end


end
