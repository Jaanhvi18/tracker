require 'rails_helper'

RSpec.describe "Galleries", type: :request do
  let!(:user) { create(:user) }
  describe "GET /show" do
    it "returns http success" do
          sign_in(user)
          get "/galleries/"
          expect(response).to have_http_status(:success)
        end
      end
    
    end
    
   
    