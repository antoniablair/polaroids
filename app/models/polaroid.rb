class Polaroid < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
  attr_accessible :artist, :description, :name, :picture, :price
end
