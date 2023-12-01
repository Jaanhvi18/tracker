require 'rails_helper'

RSpec.describe Gallery, type: :model do
  describe 'associations' do
    it 'has many posts' do
      expect(described_class.reflect_on_association(:posts).macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    let(:gallery) do
      create(:gallery).tap do |g|
        movie_post = create(:post, movie: create(:movie))
        game_post = create(:post, game: create(:game))
        show_posts = create_list(:post, 3, show: create(:show))
        g.posts << movie_post
        g.posts << game_post
        g.posts.concat(show_posts)
      end
    end

    it 'validates the minimum number of posts' do
      expect(gallery.posts.size).to be >= 5
    end

    it 'is valid with diverse post categories' do
      expect(gallery).to be_valid
    end

    context 'without diverse post categories' do
      before do
        gallery.posts.clear
        gallery.posts.concat(create_list(:post, 5, game: create(:game))) # all posts associated with a game
      end

      it 'is not valid' do
        expect(gallery).not_to be_valid
      end
    end
  end
end
