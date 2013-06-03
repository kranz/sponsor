require "spec_helper"

describe RegioniController do
  describe "routing" do

    it "routes to #index" do
      get("/regioni").should route_to("regioni#index")
    end

    it "routes to #new" do
      get("/regioni/new").should route_to("regioni#new")
    end

    it "routes to #show" do
      get("/regioni/1").should route_to("regioni#show", :id => "1")
    end

    it "routes to #edit" do
      get("/regioni/1/edit").should route_to("regioni#edit", :id => "1")
    end

    it "routes to #create" do
      post("/regioni").should route_to("regioni#create")
    end

    it "routes to #update" do
      put("/regioni/1").should route_to("regioni#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/regioni/1").should route_to("regioni#destroy", :id => "1")
    end

  end
end
