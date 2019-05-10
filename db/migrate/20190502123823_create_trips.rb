class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :country
      t.string :city
      t.date :start_date
      t.string :trip_type
      t.integer :duration, default: 1
      t.integer :month

      t.timestamps
    end
  end
end
