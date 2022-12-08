class Booking < ApplicationRecord
  belongs_to :flight, foreign_key: 'flight_id'
  belongs_to :passenger, foreign_key: 'passenger_id'
end
