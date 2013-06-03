require 'spec_helper'

describe "StatoContributi" do
  describe "GET /stati_contributo" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get stati_contributo_path
      response.status.should be(200)
    end
  end
end
