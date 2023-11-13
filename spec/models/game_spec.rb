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
    it "Release_date provided " do 
      g1 = Game.new(name: "Minecraft", release_date: 10/23/19)
      expect(g1). to be_valid
      expect(g1.release_date). to eq(10/23/19)
    end 
    it "Description provided " do 
      g1 = Game.new(name: "Minecraft", description: "Super cool game! Can do a lot of stuff.")
      expect(g1). to be_valid
      expect(g1.description). to eq("Super cool game! Can do a lot of stuff.")
    end 
    it "Platform provided " do 
      g1 = Game.new(name: "Minecraft", platform: "Desktop")
      expect(g1). to be_valid
      expect(g1.platform). to eq("Desktop")
    end 
    it "ESRB_rating provided " do 
      g1 = Game.new(name: "Minecraft", ESRB_rating: "PG")
      expect(g1). to be_valid
      expect(g1.ESRB_rating). to eq("PG")
    end 
    it "Price provided " do 
      g1 = Game.new(name: "Minecraft", price: 0.00)
      expect(g1). to be_valid
      expect(g1.price). to eq(0.00)
    end 
  end
end
