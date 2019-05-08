class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :month, :duration, :users, :unavailable_dates

  def unavailable_dates
    object.unavailable_dates.map(&:date)
  end
end
