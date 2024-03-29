require "spec_helper"

describe AreeTerritorialiController do
  describe "routing" do

    it "routes to #index" do
      get("/aree_territoriali").should route_to("aree_territoriali#index")
    end

    it "routes to #new" do
      get("/aree_territoriali/new").should route_to("aree_territoriali#new")
    end

    it "routes to #show" do
      get("/aree_territoriali/1").should route_to("aree_territoriali#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aree_territoriali/1/edit").should route_to("aree_territoriali#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aree_territoriali").should route_to("aree_territoriali#create")
    end

    it "routes to #update" do
      put("/aree_territoriali/1").should route_to("aree_territoriali#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aree_territoriali/1").should route_to("aree_territoriali#destroy", :id => "1")
    end

  end
end
