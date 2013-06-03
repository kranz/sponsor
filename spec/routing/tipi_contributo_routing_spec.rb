require "spec_helper"

describe TipiContributoController do
  describe "routing" do

    it "routes to #index" do
      get("/tipi_contributo").should route_to("tipi_contributo#index")
    end

    it "routes to #new" do
      get("/tipi_contributo/new").should route_to("tipi_contributo#new")
    end

    it "routes to #show" do
      get("/tipi_contributo/1").should route_to("tipi_contributo#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipi_contributo/1/edit").should route_to("tipi_contributo#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipi_contributo").should route_to("tipi_contributo#create")
    end

    it "routes to #update" do
      put("/tipi_contributo/1").should route_to("tipi_contributo#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipi_contributo/1").should route_to("tipi_contributo#destroy", :id => "1")
    end

  end
end
