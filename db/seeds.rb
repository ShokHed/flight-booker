# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Flight.destroy_all
Flight.destroy_all
Airport.destroy_all
Passenger.destroy_all
Booking.destroy_all

Airport.create!([{
  code: 'SEA',
  name: 'Seattle-Tacoma International Airport',
  city: 'SeaTac',
  state: 'Washington'
},
{
  code: 'LGA',
  name: 'LaGuardia Airport',
  city: 'East Elmhusrt',
  state: 'New York'
},
{
  code: 'LAX',
  name: 'Los Angeles International Airport',
  city: 'Los Angeles',
  state: 'California'
}])
p "Created #{Airport.count} Airports"

Flight.create!([{
  origin_id: 1,
  destination_id: 2,
  start: DateTime.parse('2029-01-01 6:01:00'),
  duration: 495
},
{
  origin_id: 1,
  destination_id: 2,
  start: DateTime.parse('2029-01-01 13:11:11'),
  duration: 495
},
{
  origin_id: 2,
  destination_id: 1,
  start: DateTime.parse('2029-01-01 6:35:00'),
  duration: 495
},
{
  origin_id: 2,
  destination_id: 1,
  start: DateTime.parse('2029-01-01 23:09:12'),
  duration: 495
},
{
  origin_id: 1,
  destination_id: 3,
  start: DateTime.parse('2029-01-01 6:16:00'),
  duration: 175
},
{
  origin_id: 1,
  destination_id: 3,
  start: DateTime.parse('2029-01-01 15:54:32'),
  duration: 495
}])

p "Created #{Flight.count} Flights"

Booking.create([{
  flight_id: 1
},
{
  flight_id: 2
}])

p "Create #{Booking.count} Bookings"

Passenger.create([{
  name: 'Tom Brady',
  email: 'tomB@email.com',
  booking_id: 1
},
{
  name: 'Jan Carlson',
  email: 'janC@email.com',
  booking_id: 1
},
{
  name: 'Matt Thompson',
  email: 'mattT@email.com',
  booking_id: 2
}])

p "Created #{Passenger.count} Passengers"
