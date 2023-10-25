require 'rails_helper'

RSpec.describe "ReviewCruds", type: :system do
  before do
    driven_by(:rack_test)
  end
  context "checking for presence of attributes" do
    it "should show review with created date" do 
    @r = Review.create(rating: 5)
    visit review_path(@r)
    expect(page.current_path).to eq(review_path(@r))
    expect(page).to have_content("Review created at")
    end
end
end
