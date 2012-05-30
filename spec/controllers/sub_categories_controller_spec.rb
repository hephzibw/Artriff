require "spec_helper"

describe SubCategoriesController do
  render_views

  describe "show" do
    it "should be successfull" do
      c = FactoryGirl.create(:category, :name => "abc")
      c = FactoryGirl.create(:sub_category, :name => "Some SubCategory", :category_id => c.id)
      get :show, {:category_id => c.id}
      response.should be_success
      response.body.should have_selector('h1', text: "Some SubCategory")
    end
  end
end
