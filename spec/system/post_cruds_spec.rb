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

  it 'stays on homepage if user not logged in' do
    visit root_path
    click_on "Create A Post"
    expect(page). to have_current_path(root_path)
  end

end
