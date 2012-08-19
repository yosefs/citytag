class Tag < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true, :length => { :minimum => 2,:maximum => 30}
  has_many :tagcities
  has_many :cities, through: :tagcities
end
