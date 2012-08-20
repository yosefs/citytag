class City < ActiveRecord::Base
  attr_accessible :name, :latitude, :longitude
  validates :name, :presence => true, :length => { :minimum => 2,:maximum => 30}
  validates :latitude, :presence => true,:allow_blank => false,:confirmation => true
  validates :longitude, :presence => true,:allow_blank => false
  has_many :tagcities
  has_many :tags, through: :tagcities
end