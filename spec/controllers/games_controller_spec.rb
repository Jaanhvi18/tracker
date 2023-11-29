require 'rails_helper'

RSpec.describe 'GamesController', type: :controller do
  let(:valid_attributes) {
    # Define valid attributes for your model here
  {name: 'Chess', release_date: '10/2/100',
   description: "Board game",platform: 'Board',
  price: 99.99
 }
}

  let(:invalid_attributes) {
    # Define invalid attributes for your model here
    {name: 3, release_date: '10/2/100',
    description: "Board game",platform: 'Board',
   price: 99
  }
  }


  describe "POST #create" do
  context "with valid params" do
    it "creates a new YourModel" do
      expect {Game.create!(valid_attributes)}.to change(Game, :count).by(1)
    end
  end

  #context "with invalid params" do
   # it "returns an unprocessable entity response" do
    #  #expect(Game.create(invalid_attributes)).to render_template(:new)
     # post :create, params: {game: invalid_attributes}

      #expect(response).to render_template(:new)
   # end
 # end
end
end