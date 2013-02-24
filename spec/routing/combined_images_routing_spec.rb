require "spec_helper"

describe CombinedImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/combined_images").should route_to("combined_images#index")
    end

    it "routes to #new" do
      get("/combined_images/new").should route_to("combined_images#new")
    end

    it "routes to #show" do
      get("/combined_images/1").should route_to("combined_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/combined_images/1/edit").should route_to("combined_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/combined_images").should route_to("combined_images#create")
    end

    it "routes to #update" do
      put("/combined_images/1").should route_to("combined_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/combined_images/1").should route_to("combined_images#destroy", :id => "1")
    end

  end
end
