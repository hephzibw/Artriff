class Image < ActiveRecord::Base
  attr_accessible :title, :artist_id, :url
  validates_presence_of :title, :artist_id, :url
end
