class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :month, :duration, :users
end
