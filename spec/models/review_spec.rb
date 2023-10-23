require 'rails_helper'

RSpec.describe Review, type: :model do

  context "checking creation of review" do
    it "should have correct rating" do 
        r = Review.new(rating: 5)
				r1 = Review.new(rating: 2)
				r2 = Review.new(rating: 3)
        expect(r.rating).to eq(5)
				expect(r1.rating).to eq(2)
				expect(r2.rating).to eq(3)
    end
  end

  context "checking for presence of attributes" do
    it "should show review with created date" do 
      r = Review.new(rating: 5)
      visit review_path(1)
      expect(page.current_path).to eq(review_path)
      expect(page).to have_content("Review created at")
    end
  end
end