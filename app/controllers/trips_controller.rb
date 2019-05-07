class TripsController < ApplicationController
  def index
    trips = Trip.all
    render json: trips
  end

  def create
    trip = Trip.create(trip_params)
    if trip.valid?
      render json: trip
    else
      render json: {errors: trip.errors.full_messages}
    end
  end

  def show
    trip = Trip.find(params[:id])
    render json: trip
  end

  def update
    trip = Trip.find(params[:id])
    trip.update(trip_params)
    render json: trip
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    render json: {message: 'trip destroyed'}
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :location, :start_date, :trip_type, :duration, :month)
  end
end
