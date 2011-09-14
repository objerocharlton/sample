require "spec_helper"

describe MyOrganizersController do
  describe "routing" do

    it "routes to #index" do
      get("/my_organizers").should route_to("my_organizers#index")
    end

    it "routes to #new" do
      get("/my_organizers/new").should route_to("my_organizers#new")
    end

    it "routes to #show" do
      get("/my_organizers/1").should route_to("my_organizers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/my_organizers/1/edit").should route_to("my_organizers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/my_organizers").should route_to("my_organizers#create")
    end

    it "routes to #update" do
      put("/my_organizers/1").should route_to("my_organizers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/my_organizers/1").should route_to("my_organizers#destroy", :id => "1")
    end

  end
end
