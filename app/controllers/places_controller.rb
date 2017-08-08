class PlacesController < ApplicationController
  before_action :authentricate_user!, only: [:new, :create, :destroy, :update]
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 5) 
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def destroy
  end

  def update
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end
