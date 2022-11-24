# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all

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

Flight.destroy_all

Flight.create!([{
  origin_id: 1,
  destination_id: 2,
  start: '2023-01-01 6:01:00',
  duration: 495
}
# ,
# {
#   departure_id: 2,
#   arrival_id: 1,
#   start: '2023-01-01 6:35:00',
#   duration: 495
# },
# {
#   departure_id: 1,
#   arrival_id: 3,
#   start: '2023-01-01 6:16:00',
#   duration: 175
# }
])

p "Created #{Flight.count} Flights"
