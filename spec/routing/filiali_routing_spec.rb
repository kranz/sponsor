require "spec_helper"

describe FilialiController do
  describe "routing" do

    it "routes to #index" do
      get("/filiali").should route_to("filiali#index")
    end

    it "routes to #new" do
      get("/filiali/new").should route_to("filiali#new")
    end

    it "routes to #show" do
      get("/filiali/1").should route_to("filiali#show", :id => "1")
    end

    it "routes to #edit" do
      get("/filiali/1/edit").should route_to("filiali#edit", :id => "1")
    end

    it "routes to #create" do
      post("/filiali").should route_to("filiali#create")
    end

    it "routes to #update" do
      put("/filiali/1").should route_to("filiali#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/filiali/1").should route_to("filiali#destroy", :id => "1")
    end

  end
end
