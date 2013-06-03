require "spec_helper"

describe TipiEventoController do
  describe "routing" do

    it "routes to #index" do
      get("/tipi_evento").should route_to("tipi_evento#index")
    end

    it "routes to #new" do
      get("/tipi_evento/new").should route_to("tipi_evento#new")
    end

    it "routes to #show" do
      get("/tipi_evento/1").should route_to("tipi_evento#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipi_evento/1/edit").should route_to("tipi_evento#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipi_evento").should route_to("tipi_evento#create")
    end

    it "routes to #update" do
      put("/tipi_evento/1").should route_to("tipi_evento#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipi_evento/1").should route_to("tipi_evento#destroy", :id => "1")
    end

  end
end
