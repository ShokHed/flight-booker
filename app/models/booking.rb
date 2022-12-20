class Booking < ApplicationRecord
  belongs_to :flight, foreign_key: 'flight_id'
  has_many :passengers, inverse_of: :booking, dependent: :destroy # , foreign_key: 'passenger_id'

  # accepts_nested_attributes_for :relationship, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :passengers, allow_destroy: true, reject_if: :all_blank

end
