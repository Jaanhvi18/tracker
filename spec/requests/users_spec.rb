# frozen_string_literal: true
# spec/requests/users_spec.rb
# spec/requests/users_spec.rb
# spec/requests/users_spec.rb
require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /show" do
    let(:user) { create(:user) }

    before do
      # Simulate user login, adjust this as per your authentication setup
      sign_in user
    end

    it "redirects to the home page" do
      get user_path(user)
      expect(response).to redirect_to(root_path)
    end
  end
end
