require "spec_helper"

describe AzioniController do
  describe "routing" do

    it "routes to #index" do
      get("/azioni").should route_to("azioni#index")
    end

    it "routes to #new" do
      get("/azioni/new").should route_to("azioni#new")
    end

    it "routes to #show" do
      get("/azioni/1").should route_to("azioni#show", :id => "1")
    end

    it "routes to #edit" do
      get("/azioni/1/edit").should route_to("azioni#edit", :id => "1")
    end

    it "routes to #create" do
      post("/azioni").should route_to("azioni#create")
    end

    it "routes to #update" do
      put("/azioni/1").should route_to("azioni#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/azioni/1").should route_to("azioni#destroy", :id => "1")
    end

  end
end
