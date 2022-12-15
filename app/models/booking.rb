class Booking < ApplicationRecord
  belongs_to :flight, foreign_key: 'flight_id'
  belongs_to :passenger, foreign_key: 'passenger_id'

  # accepts_nested_attributes_for :relationship, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :passenger, allow_destroy: true

end
