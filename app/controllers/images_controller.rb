class ImagesController < ApplicationController

  def show
    @images = Image.find_all_by_artist_id params[:artist_id]
  end
end