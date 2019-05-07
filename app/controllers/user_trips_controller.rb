class UserTripsController < ApplicationController
  def index
    user_trips = UserTrip.all
    render json: user_trips
  end

  def create
    user_trip = UserTrip.create(user_trip_params)
    if user_trip.valid?
      render json: user_trip
    else
      render json: {errors: user_trip.errors.full_messages}
    end
  end

  def show
    user_trip = UserTrip.find(params[:id])
    render json: user_trip
  end

  def update
    user_trip = UserTrip.find(params[:id])
    user_trip.update(user_trip_params)
    render json: user_trip
  end

  def destroy
    user_trip = UserTrip.find(params[:id])
    user_trip.destroy
    render json: {message: 'user_trip destroyed'}
  end

  private

  def user_trip_params
    params.require(:user_trip).permit(:user_id, :trip_id)
  end

end
