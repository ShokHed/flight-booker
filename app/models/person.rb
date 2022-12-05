class Person < ApplicationRecord
  has_many :bookings
  has many :flights, through: :bookings
end
