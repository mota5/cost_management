require "spec_helper"

describe SectionPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/section_posts").should route_to("section_posts#index")
    end

    it "routes to #new" do
      get("/section_posts/new").should route_to("section_posts#new")
    end

    it "routes to #show" do
      get("/section_posts/1").should route_to("section_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/section_posts/1/edit").should route_to("section_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/section_posts").should route_to("section_posts#create")
    end

    it "routes to #update" do
      put("/section_posts/1").should route_to("section_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/section_posts/1").should route_to("section_posts#destroy", :id => "1")
    end

  end
end
