class Image < ActiveRecord::Base
  attr_accessible :title, :artist_id, :url
  validates_presence_of :artist_id, :url
end
