class LocationsController < ApplicationController

  def index
    locations = Location.find_by(trip_id: params[:trip_id])
    render json: locations
  end

  def create
    location = Location.create(location_params)
    if location.valid?
      render json: location
    else
      render json: {errors: location.errors.full_messages}
    end
  end

  def update
    location = locations.find(params[:id])
    location.update(location_params)
    render json: location
  end

  private

  def location_params
    params.require(:location).permit(:trip_id, :name, :votes)
  end

end
