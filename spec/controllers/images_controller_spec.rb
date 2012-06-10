require "spec_helper"

describe ImagesController do
  render_views

  describe "show" do
    it "should be successfull" do
      artist = FactoryGirl.create(:artist, :name => "C, D")
      image1 = FactoryGirl.create(:image,  :title => "1111", :artist_id => artist.id)
      image2 = FactoryGirl.create(:image,  :title => "2222", :artist_id => artist.id)
      get :show, {:artist_id => artist.id}
      response.should be_success
      response.body.should have_selector('p', text: "#{image1.title}")
      response.body.should have_selector('p', text: "#{image2.title}")
    end
  end
end
