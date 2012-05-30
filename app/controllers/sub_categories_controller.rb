class SubCategoriesController < ApplicationController

  def show
    @sub_categories = SubCategory.find_all_by_category_id params[:category_id]
  end
end