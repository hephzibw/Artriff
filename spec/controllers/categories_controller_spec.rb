require "spec_helper"

describe CategoriesController do
  render_views

  describe "index" do
    it "should be successfull" do
      FactoryGirl.create(:category)
      get :index
      response.should be_success
    end

    it "should list out all the categories" do
      ["Photographers", "Musicians"].each { |category_name| Category.create!(:name => category_name) }
      get :index
      response.body.should have_selector('h1', text: Category.first.name)
      response.body.should have_selector('h1', text: Category.last.name)
    end
  end

  describe "show" do
    it "should be successfull" do
      c = FactoryGirl.create(:category, :name => "abc")
      get :show, {:id => c.id}
      response.should be_success
      p response.body
      response.body.should have_selector('p', text: "abc")
    end
  end
end
