class PlacesController < ApplicationController

  def index
    render :template => "places/index"
  end

  def new
    render :template => "places/new"
  end

  def create
    new_place = Place.new
    new_place["name"] = params["name"]
    new_place.save

    redirect_to "/places"  # Redirect instead of render :template => "places/index"

  end


  def show
    @place = Place.find_by({ "id" => params["id"] })
  
    if @place.nil?
      redirect_to "/places", alert: "Place not found"
    else
      render :template => "places/show"
    end
  end

end

