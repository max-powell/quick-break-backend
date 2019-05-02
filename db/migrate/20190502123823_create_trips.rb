class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.date :start_date
      t.integer :duration, default: 1

      t.timestamps
    end
  end
end
