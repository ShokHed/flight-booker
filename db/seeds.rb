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



# Airport.destroy_all

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

# Flight.destroy_all

Flight.create!([{
  origin_id: 1,
  destination_id: 2,
  start: DateTime.parse('2023-01-01 6:01:00'),
  duration: 495
},
{
  origin_id: 1,
  destination_id: 2,
  start: DateTime.parse('2023-01-01 13:11:11'),
  duration: 495
},
{
  origin_id: 2,
  destination_id: 1,
  start: DateTime.parse('2023-01-01 6:35:00'),
  duration: 495
},
{
  origin_id: 2,
  destination_id: 1,
  start: DateTime.parse('2023-01-01 23:09:12'),
  duration: 495
},
{
  origin_id: 1,
  destination_id: 3,
  start: DateTime.parse('2023-01-01 6:16:00'),
  duration: 175
},
{
  origin_id: 1,
  destination_id: 3,
  start: DateTime.parse('2023-01-01 15:54:32'),
  duration: 495
}])

p "Created #{Flight.count} Flights"
