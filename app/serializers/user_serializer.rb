class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :trips

  def trips
    object.trips.map do |t|
      {
        id: t.id,
        name: t.name,
        location: t.location,
        month: t.month,
        duration: t.duration,
        trip_type: t.trip_type,
        users: t.users.map(&:name)
      }
    end
  end

end
