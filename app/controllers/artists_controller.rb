class ArtistsController < ApplicationController

  def show
    @artists = Artist.find_all_by_sub_category_id params[:sub_category_id]
  end
end