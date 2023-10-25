require 'rails_helper'

RSpec.describe Post, type: :model do

  context "checking creation of post" do
    it "should have correct description" do 
        p = Post.new(description: "Movie 1")
				p1 = Post.new(description: "Movie 2")
				p2 = Post.new(description: "Movie 3")
        expect(p.description).to eq("Movie 1")
				expect(p1.description).to eq("Movie 2")
				expect(p2.description).to eq("Movie 3")
    end
  end

  context "checking for presence of attribute" do
    it "should show post with created date" do 
      p = Post.new(description: "Movie 1")
      visit post_path(p.id)
      expect(page.current_path).to eq(post_path)
      expect(page).to have_content("Post created at")
    end
  end
end