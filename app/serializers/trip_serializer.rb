class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :duration, :users
end