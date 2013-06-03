require "spec_helper"

describe RichiedentesController do
  describe "routing" do

    it "routes to #index" do
      get("/richiedentes").should route_to("richiedentes#index")
    end

    it "routes to #new" do
      get("/richiedentes/new").should route_to("richiedentes#new")
    end

    it "routes to #show" do
      get("/richiedentes/1").should route_to("richiedentes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/richiedentes/1/edit").should route_to("richiedentes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/richiedentes").should route_to("richiedentes#create")
    end

    it "routes to #update" do
      put("/richiedentes/1").should route_to("richiedentes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/richiedentes/1").should route_to("richiedentes#destroy", :id => "1")
    end

  end
end
