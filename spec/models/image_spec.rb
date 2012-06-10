require "spec_helper"

describe Image do
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:artist_id)}

  describe "attr_accessible" do
    it "title and artist_id" do
      accessible_attributes = Image.accessible_attributes
      accessible_attributes.should include("title")
      accessible_attributes.should include("artist_id")
      accessible_attributes.should include("url")
    end
  end
end