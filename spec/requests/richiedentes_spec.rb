require 'spec_helper'

describe "Richiedentes" do
  describe "GET /richiedentes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get richiedentes_path
      response.status.should be(200)
    end
  end
end
