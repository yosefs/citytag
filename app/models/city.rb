class City < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  validates :name, :presence => true, :length => { :minimum => 2,:maximum => 30}
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  has_many :tagcities
  has_many :tags, through: :tagcities
end