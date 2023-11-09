require 'rails_helper'

RSpec.describe Movie, type: :model do
  context "check it atleast has name" do 
    it "name provided " do 
      movie1 = Movie.new(name: "FNF2")
      expect(movie1). to be_valid
    end 
    it "name not provided " do 
      movie0 = Movie.new(director: "adam")
      expect(movie0).not_to be_valid


    end
  end

end
