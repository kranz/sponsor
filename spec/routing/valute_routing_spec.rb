require "spec_helper"

describe ValuteController do
  describe "routing" do

    it "routes to #index" do
      get("/valute").should route_to("valute#index")
    end

    it "routes to #new" do
      get("/valute/new").should route_to("valute#new")
    end

    it "routes to #show" do
      get("/valute/1").should route_to("valute#show", :id => "1")
    end

    it "routes to #edit" do
      get("/valute/1/edit").should route_to("valute#edit", :id => "1")
    end

    it "routes to #create" do
      post("/valute").should route_to("valute#create")
    end

    it "routes to #update" do
      put("/valute/1").should route_to("valute#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/valute/1").should route_to("valute#destroy", :id => "1")
    end

  end
end
