require 'rails_helper'

RSpec.describe Show, type: :model do
  context "validations check- " do 
    it "name provided " do 
      s1 = Show.new(name: "Dark")
      expect(s1). to be_valid
    end 
    it "name not provided " do 
      s0 = Show.new(seasons: 2)
      expect(s0).not_to be_valid
      s1 = Show.new(name: nil)
      expect(s1).not_to be_valid



    end
  end

end
