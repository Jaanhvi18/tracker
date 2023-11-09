require 'rails_helper'

RSpec.describe Game, type: :model do
  context "validations check- " do 
    it "name provided " do 
      g1 = Game.new(name: "Minecraft")
      expect(g1). to be_valid
    end 
    it "name not provided " do 
      g0 = Game.new(ESRB_rating: "M")
      expect(g0).not_to be_valid
      g1 = Game.new(name: nil)
      expect(g1).not_to be_valid



    end
  end
end
