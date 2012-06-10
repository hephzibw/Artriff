require "spec_helper"

describe ArtistsController do
  render_views

  describe "show" do
    it "should be successfull" do
      sub_category = FactoryGirl.create(:sub_category, :name => "Some SubCategory")
      FactoryGirl.create(:artist, :name => "A, B", :sub_category_id => sub_category.id)
      FactoryGirl.create(:artist, :name => "C, D", :sub_category_id => sub_category.id)
      get :show, {:sub_category_id => sub_category.id}
      response.should be_success
      response.body.should have_selector('h1', text: "A, B")
      response.body.should have_selector('h1', text: "C, D")
    end
  end
end
