class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :month, :duration, :users, :unavailable_dates

end
