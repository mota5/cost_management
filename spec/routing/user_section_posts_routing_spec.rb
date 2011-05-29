require "spec_helper"

describe UserSectionPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_section_posts").should route_to("user_section_posts#index")
    end

    it "routes to #new" do
      get("/user_section_posts/new").should route_to("user_section_posts#new")
    end

    it "routes to #show" do
      get("/user_section_posts/1").should route_to("user_section_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_section_posts/1/edit").should route_to("user_section_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_section_posts").should route_to("user_section_posts#create")
    end

    it "routes to #update" do
      put("/user_section_posts/1").should route_to("user_section_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_section_posts/1").should route_to("user_section_posts#destroy", :id => "1")
    end

  end
end
