class CreateUnavailableDates < ActiveRecord::Migration[5.2]
  def change
    create_table :unavailable_dates do |t|
      t.references :trip, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
