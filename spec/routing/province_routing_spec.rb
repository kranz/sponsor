require "spec_helper"

describe ProvinceController do
  describe "routing" do

    it "routes to #index" do
      get("/province").should route_to("province#index")
    end

    it "routes to #new" do
      get("/province/new").should route_to("province#new")
    end

    it "routes to #show" do
      get("/province/1").should route_to("province#show", :id => "1")
    end

    it "routes to #edit" do
      get("/province/1/edit").should route_to("province#edit", :id => "1")
    end

    it "routes to #create" do
      post("/province").should route_to("province#create")
    end

    it "routes to #update" do
      put("/province/1").should route_to("province#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/province/1").should route_to("province#destroy", :id => "1")
    end

  end
end
