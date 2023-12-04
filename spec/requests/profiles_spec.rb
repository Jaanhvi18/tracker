# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Profiles', type: :request do
  let!(:user) { create(:user) }
  describe 'GET /show' do
    it 'returns http success' do
      sign_in(user)
      get '/profiles/show'
      expect(response).to have_http_status(:success)
    end
  end
end
