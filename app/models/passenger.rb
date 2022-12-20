class Passenger < ApplicationRecord
  belongs_to :booking
  has_one :flight, through: :booking

  validates :name, presence: true, length: { in: 2..100 }
  validates :email, presence: true, length: { in: 2..100 }
end
