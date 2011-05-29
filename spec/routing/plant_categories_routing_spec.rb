require "spec_helper"

describe PlantCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/plant_categories").should route_to("plant_categories#index")
    end

    it "routes to #new" do
      get("/plant_categories/new").should route_to("plant_categories#new")
    end

    it "routes to #show" do
      get("/plant_categories/1").should route_to("plant_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plant_categories/1/edit").should route_to("plant_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plant_categories").should route_to("plant_categories#create")
    end

    it "routes to #update" do
      put("/plant_categories/1").should route_to("plant_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plant_categories/1").should route_to("plant_categories#destroy", :id => "1")
    end

  end
end