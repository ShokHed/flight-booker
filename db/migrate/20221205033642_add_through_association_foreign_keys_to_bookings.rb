class AddThroughAssociationForeignKeysToBookings < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bookings, :flights, column: :flight_id, index: true
    add_foreign_key :bookings, :persons, column: :passenger_id, index: true
  end
end
