require "rails_helper"

RSpec.describe PowersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/powers").to route_to("powers#index")
    end

    it "routes to #show" do
      expect(get: "/powers/1").to route_to("powers#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/powers").to route_to("powers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/powers/1").to route_to("powers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/powers/1").to route_to("powers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/powers/1").to route_to("powers#destroy", id: "1")
    end
  end
end
