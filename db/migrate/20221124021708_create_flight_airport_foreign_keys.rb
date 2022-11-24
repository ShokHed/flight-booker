class CreateFlightAirportForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :origin_id
    add_foreign_key :flights, :airports, column: :destination_id
  end
end
