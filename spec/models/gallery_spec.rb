# spec/models/gallery_spec.rb
require 'rails_helper'

RSpec.describe Gallery, type: :model do
  describe 'associations' do
    it 'has many posts' do
      expect(subject).to have_many(:posts), 'Gallery should have many posts associated with it'
    end
  end

  describe 'validations' do
    context 'with a gallery that has fewer than the minimum number of posts' do
      let(:gallery_with_fewer_posts) { build(:gallery, posts: build_list(:post, 4)) }
    end
  end
end
