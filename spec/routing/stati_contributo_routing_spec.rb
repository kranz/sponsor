require "spec_helper"

describe StatiContributoController do
  describe "routing" do

    it "routes to #index" do
      get("/stati_contributo").should route_to("stati_contributo#index")
    end

    it "routes to #new" do
      get("/stati_contributo/new").should route_to("stati_contributo#new")
    end

    it "routes to #show" do
      get("/stati_contributo/1").should route_to("stati_contributo#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stati_contributo/1/edit").should route_to("stati_contributo#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stati_contributo").should route_to("stati_contributo#create")
    end

    it "routes to #update" do
      put("/stati_contributo/1").should route_to("stati_contributo#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stati_contributo/1").should route_to("stati_contributo#destroy", :id => "1")
    end

  end
end
