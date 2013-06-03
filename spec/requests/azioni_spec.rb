require 'spec_helper'

describe "Azioni" do
  describe "GET /azioni" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get azioni_path
      response.status.should be(200)
    end
  end
end
