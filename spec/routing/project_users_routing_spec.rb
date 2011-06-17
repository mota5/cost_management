require "spec_helper"

describe ProjectUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/project_users").should route_to("project_users#index")
    end

    it "routes to #new" do
      get("/project_users/new").should route_to("project_users#new")
    end

    it "routes to #show" do
      get("/project_users/1").should route_to("project_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_users/1/edit").should route_to("project_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_users").should route_to("project_users#create")
    end

    it "routes to #update" do
      put("/project_users/1").should route_to("project_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_users/1").should route_to("project_users#destroy", :id => "1")
    end

  end
end
