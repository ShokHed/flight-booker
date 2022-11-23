class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.datetime :start
      t.integer :flight_duration_min

      t.timestamps
    end
  end
end
