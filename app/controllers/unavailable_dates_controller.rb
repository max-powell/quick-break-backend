class UnavailableDatesController < ApplicationController
  def index
    unavailable_dates = UnavailableDate.find_by(user_trip_id: params[:user_trip_id])
    render json: unavailable_dates
  end

  def create
    unavailable_date = UnavailableDate.create(unavailable_date_params)
    if unavailable_date.valid?
      render json: unavailable_date
    else
      render json: {errors: unavailable_date.errors.full_messages}
    end
  end

  def destroy
    unavailable_date = UnavailableDate.find(params[:id])
    unavailable_date.destroy
    render json: {message: 'unavailability destroyed'}
  end

  private

  def unavailable_date_params
    params.require(:unavailable_dates).permit(:user_trip_id, :date)
  end
end
