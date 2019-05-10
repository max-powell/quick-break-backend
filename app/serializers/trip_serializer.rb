class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :city, :month, :duration, :users, :unavailable_dates

end
