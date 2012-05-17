require "spec_helper"

describe CategoriesController do
  render_views

  describe "index" do
    it "should be successfull" do
      FactoryGirl.create(:category)
      get :index
      response.should be_success
    end

    it "should be successfull" do
      ["Photographers", "Musicians"].each { |category_name| Category.create!(:name => category_name) }
      get :index
      response.body.should have_selector('h1', text: Category.first.name)
      response.body.should have_selector('h1', text: Category.last.name)
    end
  end
end
