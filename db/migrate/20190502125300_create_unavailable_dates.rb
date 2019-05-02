class CreateUnavailableDates < ActiveRecord::Migration[5.2]
  def change
    create_table :unavailable_dates do |t|
      t.references :user_trip, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
