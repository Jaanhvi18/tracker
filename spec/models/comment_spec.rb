# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  # Test associations
  describe 'associations' do
    it 'belongs to user' do
      should belong_to(:user)
    end

    it 'belongs to post' do
      should belong_to(:post)
    end
  end
end
