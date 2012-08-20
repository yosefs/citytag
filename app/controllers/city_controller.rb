class CityController < ApplicationController
  def viewcity
    @cityName=params[:id];
    @tags=Array(@tags=Array(Tag.joins(tagcities: :city).where(cities: {name: @cityName})))
  end

  def createtag
     tagName=params[:tagname];
     cityName=params[:cityname]
     cityId=City.find_by_name(cityName, :select => 'id')
     tag=Tag.create(name:tagName);
     Tagcity.create(tag_id:tag.id, city_id:cityId.id);
     respond_to do |format|
       format.json  { render :json => {:tagName => tagName}.to_json }
     end
  end
end
