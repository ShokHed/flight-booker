# README

Flight booker web app for The Odin Project open source web dev curriculum https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker.

* Ruby version: ruby 3.0.3p157 (2021-11-24 revision 3fb7d2cadc)

* Rails version: 7.0.4

* ...

* Improvement To-Do:
  - implement simple form gem for form styling
  - implement styling using latest version of Bootsrap
  - add validations to models
  - restrict routes to relevant actions
  - routing: hide params in URL

* To-Do
  -flight search date
    -DateTime->Date
  -next step
    -create bookings/relations
      -booking
        -flight_id (foreign key)
        -person_id
      -person
        -name, email
        -has one flight thru booking
        -Flight has many passengers thru booking class:person
    -submit _results to booking#new