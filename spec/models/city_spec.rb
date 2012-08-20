require 'spec_helper'

describe City do
  it 'is invalid without a name' do
    city = City.new
    city.should_not be_valid
  end
  it 'is invalid without a name latitude, longitude' do
    city = City.new(name: 'London')
    city.should_not be_valid
  end
  it 'check basic : name, latitude, longitude' do
    city = City.new(name: 'Manitoba',latitude: 56.12106,longitude: -97.998047)
    city.should be_valid
  end
end