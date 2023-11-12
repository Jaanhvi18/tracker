require "rails_helper"

RSpec.describe EntertainmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/entertainments").to route_to("entertainments#index")
    end

    it "routes to #new" do
      expect(get: "/entertainments/new").to route_to("entertainments#new")
    end

    it "routes to #show" do
      expect(get: "/entertainments/1").to route_to("entertainments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/entertainments/1/edit").to route_to("entertainments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/entertainments").to route_to("entertainments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/entertainments/1").to route_to("entertainments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/entertainments/1").to route_to("entertainments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/entertainments/1").to route_to("entertainments#destroy", id: "1")
    end
  end
end
