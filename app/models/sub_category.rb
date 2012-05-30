class SubCategory < ActiveRecord::Base
  attr_accessible :name, :category_id
  validates_presence_of :name
end
