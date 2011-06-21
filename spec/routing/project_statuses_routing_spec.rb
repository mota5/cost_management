require "spec_helper"

describe ProjectStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/project_statuses").should route_to("project_statuses#index")
    end

    it "routes to #new" do
      get("/project_statuses/new").should route_to("project_statuses#new")
    end

    it "routes to #show" do
      get("/project_statuses/1").should route_to("project_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_statuses/1/edit").should route_to("project_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_statuses").should route_to("project_statuses#create")
    end

    it "routes to #update" do
      put("/project_statuses/1").should route_to("project_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_statuses/1").should route_to("project_statuses#destroy", :id => "1")
    end

  end
end
