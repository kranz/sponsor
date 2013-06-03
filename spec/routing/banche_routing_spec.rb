require "spec_helper"

describe BancheController do
  describe "routing" do

    it "routes to #index" do
      get("/banche").should route_to("banche#index")
    end

    it "routes to #new" do
      get("/banche/new").should route_to("banche#new")
    end

    it "routes to #show" do
      get("/banche/1").should route_to("banche#show", :id => "1")
    end

    it "routes to #edit" do
      get("/banche/1/edit").should route_to("banche#edit", :id => "1")
    end

    it "routes to #create" do
      post("/banche").should route_to("banche#create")
    end

    it "routes to #update" do
      put("/banche/1").should route_to("banche#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/banche/1").should route_to("banche#destroy", :id => "1")
    end

  end
end
