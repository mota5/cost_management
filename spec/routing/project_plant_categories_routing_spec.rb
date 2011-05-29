require "spec_helper"

describe ProjectPlantCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/project_plant_categories").should route_to("project_plant_categories#index")
    end

    it "routes to #new" do
      get("/project_plant_categories/new").should route_to("project_plant_categories#new")
    end

    it "routes to #show" do
      get("/project_plant_categories/1").should route_to("project_plant_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_plant_categories/1/edit").should route_to("project_plant_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_plant_categories").should route_to("project_plant_categories#create")
    end

    it "routes to #update" do
      put("/project_plant_categories/1").should route_to("project_plant_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_plant_categories/1").should route_to("project_plant_categories#destroy", :id => "1")
    end

  end
end
