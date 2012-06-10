require "spec_helper"

describe Artist do
  it {should validate_presence_of(:name)}
  it {should have_many(:images)}

  describe "attr_accessible" do
    it "name and sub_category_id" do
      accessible_attributes = Artist.accessible_attributes
      accessible_attributes.should include("name")
      accessible_attributes.should include("sub_category_id")
    end
  end
end