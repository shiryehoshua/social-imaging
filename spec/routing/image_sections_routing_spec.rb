require "spec_helper"

describe ImageSectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/image_sections").should route_to("image_sections#index")
    end

    it "routes to #new" do
      get("/image_sections/new").should route_to("image_sections#new")
    end

    it "routes to #show" do
      get("/image_sections/1").should route_to("image_sections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/image_sections/1/edit").should route_to("image_sections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/image_sections").should route_to("image_sections#create")
    end

    it "routes to #update" do
      put("/image_sections/1").should route_to("image_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/image_sections/1").should route_to("image_sections#destroy", :id => "1")
    end

  end
end
