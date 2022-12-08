class Passenger < ApplicationRecord
  has_one :booking
  # has_one :flight, through: :booking, source: :passenger, inverse_of: 'passenger'

  has_one :flight, through: :booking#, foreign_key: 'passenger_id' #source: :passenger

end