class Booking < ApplicationRecord
  belongs_to :flight, foreign_key: 'flight_id'
  has_many :passengers, inverse_of: :booking, dependent: :destroy

  accepts_nested_attributes_for :passengers, allow_destroy: true
  validates_associated :passengers
end
