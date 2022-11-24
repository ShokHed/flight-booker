class CreateFlightAirportForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :departure_id
    add_foreign_key :flights, :airports, column: :arrival_id
  end
end
