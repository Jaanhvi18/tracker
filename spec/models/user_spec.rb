# frozen_string_literal: true
require 'rails_helper'
RSpec.describe User, type: :model do
  it { is_expected.to have_many(:posts) }
  # Happy Path Tests
  context 'with valid attributes' do
    let(:valid_attributes) do
      { email: 'test@example.com', password: 'password', password_confirmation: 'password' }
    end
    it 'creates a new user' do
      user = User.new(valid_attributes)
      expect(user).to be_valid
    end
    # it 'is not admin by default' do
    #   user = User.new(valid_attributes)
    #   expect(user.admin?).to be_falsey
    # end
  end
  let(:valid_attributes) { { email: 'test@example.com', password: 'password', password_confirmation: 'password' } }
  # Validation Tests
  context 'with invalid attributes' do
    let(:user) { User.new(email: 'test@example.com', password: 'password', password_confirmation: 'password') }
    it 'does not create a user without an email' do
      user.email = nil
      expect(user).not_to be_valid
    end
    it 'does not create a user with mismatched password and confirmation' do
      user.password_confirmation = 'different'
      expect(user).not_to be_valid
    end
    it 'does not create a user with an invalid email format' do
      user.email = 'invalid_email'
      expect(user).not_to be_valid
    end
    # Then use it in your tests
      it 'does not create a user with a duplicate email' do
        User.create(valid_attributes)
        new_user = User.new(valid_attributes)
        expect(new_user).not_to be_valid
      end
    end
  # Custom Method Tests
  describe '.new_with_session' do
    it 'assigns github email if available in session' do
      session = { 'devise.github_data' => { 'extra' => { 'raw_info' => { 'email' => 'user@example.com' } } } }
      user = User.new_with_session({}, session)
      expect(user.email).to eq 'user@example.com'
    end
    it 'does not assign github email if not available in session' do
      user = User.new_with_session({}, {})
      expect(user.email).to be_blank
    end
  end
  describe '.from_omniauth' do
    let(:auth_hash) do
      OmniAuth::AuthHash.new(provider: 'github', uid: '12345', info: { email: 'user@example.com' })
    end
    context 'when the user already exists' do
      let!(:existing_user) { create(:user, email: 'user@example.com', provider: 'not_github', uid: 'not_12345') }
      it 'updates the user with the auth hash provider and uid' do
        user = User.from_omniauth(auth_hash)
        expect(user.uid).to eq('12345')
        expect(user.provider).to eq('github')
      end
    end
    context 'when the user does not exist' do
      it 'creates a new user' do
        expect {
          User.from_omniauth(auth_hash)
        }.to change(User, :count).by(1)
      end
    end
  end
  # describe '.from_omniauth' do
  #   let!(:existing_user) { create(:user, provider: 'github', uid: '12345', email: 'user@example.com') }
  #   it 'does not create a new user if one already exists with the same uid and provider' do
  #     expect {
  #       User.from_omniauth(auth_hash)
  #     }.not_to change(User, :count)
  #   end
  # end
  # Devise Module Tests
  describe 'Devise modules' do
    # Example test for database_authenticatable
    it 'responds to database_authenticatable methods' do
      expect(User.new).to respond_to(:encrypted_password)
    end
    # Include similar tests for :rememberable, :validatable, etc.
  end
end