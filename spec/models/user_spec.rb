require 'rails_helper'

RSpec.describe User, type: :model do
  # Happy Path Tests
  context 'with valid attributes' do
    it 'creates a new user' do
      user = User.new(email: 'test@example.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end
    it 'creates a user with a unique email' do
      User.create(email: 'unique@example.com', password: 'password', password_confirmation: 'password')
      user = User.new(email: 'unique@example.com', password: 'password', password_confirmation: 'password')
      expect(user).not_to be_valid
    end
  end

  # Sad Path Tests
  context 'with invalid attributes' do
    it 'does not create a user without an email' do
      user = User.new(password: 'password', password_confirmation: 'password')
      expect(user).not_to be_valid
    end

    it 'does not create a user with mismatched password and confirmation' do
      user = User.new(email: 'test@example.com', password: 'password', password_confirmation: 'different')
      expect(user).not_to be_valid
    end

    it 'does not create a user with an invalid email format' do
      user = User.new(email: 'invalid_email', password: 'password', password_confirmation: 'password')
      expect(user).not_to be_valid
    end

    it 'does not create a user with a duplicate email' do
      existing_user = User.create(email: 'duplicate@example.com', password: 'password', password_confirmation: 'password')
      new_user = User.new(email: 'duplicate@example.com', password: 'password', password_confirmation: 'password')
      expect(new_user).not_to be_valid
    end
  end

  # Additional tests for any custom methods or validations in your User model
end
