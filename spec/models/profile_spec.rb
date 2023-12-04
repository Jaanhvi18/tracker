require 'rails_helper'

RSpec.describe Profile, type: :model do
  let(:user) { User.create(email: 'test_user@gmail.com') }
 # it ' has a user' do
  #p1 = Profile.create(:user user)
  #expect(profile.user).to eq(user)
 # end
end
