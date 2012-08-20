class SearchController < ApplicationController
  def index
    
  end

  def show
    @value=params[:value]
    @category=params[:category]
    @results=nil
    if nil!=@value||nil!=@category
      if 'tag'==@category
        @results = City.joins(tagcities: :tag).where("tags.name LIKE :input", {:input => @value})
      elsif 'city'==@category
        @results= Array(City.find_by_name(@value));
      end
      render "show"
    end
    #redirect_to action => "index"
  end
end
