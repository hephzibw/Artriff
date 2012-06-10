class Artist < ActiveRecord::Base
  attr_accessible :name, :sub_category_id
  validates_presence_of :name
  has_many :images
end
