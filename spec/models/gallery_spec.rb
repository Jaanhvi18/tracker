require 'rails_helper'




RSpec.describe Gallery, type: :model do
    


    #  Ensures that a gallery belongs to a user.
  it 'is valid with valid attributes and a user' do
    user = FactoryBot.create(:user) # Assuming you have a user factory
    gallery = Gallery.new(title: 'My Gallery', description: 'A collection of my favorite items', user: user)
    expect(gallery).to be_valid
  end


#   Validates that a gallery cannot exist without essential attributes, including an associated user.
  it 'is invalid without a user' do
    gallery = Gallery.new(title: 'My Gallery', description: 'A collection of my favorite items')
    expect(gallery).to_not be_valid
  end

#   testing the relationship between the Gallery and Post models and any behaviors in the Gallery model that depend on the Post attributes.
    it 'can have many posts' do
      gallery = FactoryBot.create(:gallery)
      gallery.posts.create(title: 'New Game', media_type: 'game', stars: 5, description: 'Great game!')
      gallery.posts.create(title: 'New Movie', media_type: 'movie', stars: 4, description: 'Great movie!')
  
      expect(gallery.posts.length).to eq(2)
      expect(gallery.posts.first.title).to eq('New Game')
      expect(gallery.posts.second.media_type).to eq('movie')


    end
end 


# Testing  Validations or Scopes in the Gallery If the Gallery model has validations or scopes that relate to the number or type of posts
context 'validations' do
    it 'is valid with a name' do
      gallery = Gallery.new(name: "User's Gallery")
      expect(gallery).to be_valid
    end

    it 'is invalid without a name' do
      gallery = Gallery.new
      expect(gallery).not_to be_valid
    end
  end




#   if we scopes or class methods that filter posts based on their attributes, 
# you should test these at the Gallery model level:

describe 'scopes' do
    before do
      @gallery = FactoryBot.create(:gallery)
      @gallery.posts.create([
        { title: 'New Game', media_type: 'game', stars: 5, description: 'Great game!' },
        { title: 'New Movie', media_type: 'movie', stars: 3, description: 'Good movie!' }
      ])
    end

    it 'can retrieve all game posts' do
      games = @gallery.posts.where(media_type: 'game')
      expect(games.count).to eq(1)
      expect(games.first.title).to eq('New Game')
    end
end