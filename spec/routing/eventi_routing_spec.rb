require "spec_helper"

describe EventiController do
  describe "routing" do

    it "routes to #index" do
      get("/eventi").should route_to("eventi#index")
    end

    it "routes to #new" do
      get("/eventi/new").should route_to("eventi#new")
    end

    it "routes to #show" do
      get("/eventi/1").should route_to("eventi#show", :id => "1")
    end

    it "routes to #edit" do
      get("/eventi/1/edit").should route_to("eventi#edit", :id => "1")
    end

    it "routes to #create" do
      post("/eventi").should route_to("eventi#create")
    end

    it "routes to #update" do
      put("/eventi/1").should route_to("eventi#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/eventi/1").should route_to("eventi#destroy", :id => "1")
    end

  end
end
