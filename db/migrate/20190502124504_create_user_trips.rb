class CreateUserTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :user_trips do |t|
      t.references :user, foreign_key: true
      t.references :trip, foreign_key: true
      # t.boolean :location_selected, default: false

      t.timestamps
    end
  end
end
