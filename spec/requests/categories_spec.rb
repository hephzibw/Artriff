require 'spec_helper'

describe "Categories" do
  describe "GET /categories" do
    it "should see categories" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/categories'
      page.should have_content('CATEGORIES')
      #response.status.should be(200)
    end
  end
end
