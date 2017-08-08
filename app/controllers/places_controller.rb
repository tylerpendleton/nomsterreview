class PlacesController < ApplicationController
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 5) 
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.create(place_params[:params])
  end

  def destroy
  end

  def update
  end

  private

  def place_params
  end
end
