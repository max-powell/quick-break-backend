class AddUnavailableDatesToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :unavailable_dates, :string, default: ''
  end
end
