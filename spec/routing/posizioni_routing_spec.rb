require "spec_helper"

describe PosizioniController do
  describe "routing" do

    it "routes to #index" do
      get("/posizioni").should route_to("posizioni#index")
    end

    it "routes to #new" do
      get("/posizioni/new").should route_to("posizioni#new")
    end

    it "routes to #show" do
      get("/posizioni/1").should route_to("posizioni#show", :id => "1")
    end

    it "routes to #edit" do
      get("/posizioni/1/edit").should route_to("posizioni#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posizioni").should route_to("posizioni#create")
    end

    it "routes to #update" do
      put("/posizioni/1").should route_to("posizioni#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/posizioni/1").should route_to("posizioni#destroy", :id => "1")
    end

  end
end
