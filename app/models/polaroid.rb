class Polaroid < ActiveRecord::Base
  attr_accessible :artist, :description, :name, :picture, :price
end
