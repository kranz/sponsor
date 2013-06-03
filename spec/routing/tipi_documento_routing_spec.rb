require "spec_helper"

describe TipiDocumentoController do
  describe "routing" do

    it "routes to #index" do
      get("/tipi_documento").should route_to("tipi_documento#index")
    end

    it "routes to #new" do
      get("/tipi_documento/new").should route_to("tipi_documento#new")
    end

    it "routes to #show" do
      get("/tipi_documento/1").should route_to("tipi_documento#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipi_documento/1/edit").should route_to("tipi_documento#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipi_documento").should route_to("tipi_documento#create")
    end

    it "routes to #update" do
      put("/tipi_documento/1").should route_to("tipi_documento#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipi_documento/1").should route_to("tipi_documento#destroy", :id => "1")
    end

  end
end
