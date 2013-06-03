require 'spec_helper'

describe "TipoEventi" do
  describe "GET /tipi_evento" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tipi_evento_path
      response.status.should be(200)
    end
  end
end
