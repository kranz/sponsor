require "spec_helper"

describe ContributiController do
  describe "routing" do

    it "routes to #index" do
      get("/contributi").should route_to("contributi#index")
    end

    it "routes to #new" do
      get("/contributi/new").should route_to("contributi#new")
    end

    it "routes to #show" do
      get("/contributi/1").should route_to("contributi#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contributi/1/edit").should route_to("contributi#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contributi").should route_to("contributi#create")
    end

    it "routes to #update" do
      put("/contributi/1").should route_to("contributi#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contributi/1").should route_to("contributi#destroy", :id => "1")
    end

  end
end
