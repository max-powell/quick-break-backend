class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :trip, foreign_key: true
      t.string :name
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
