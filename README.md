# README

Flight booker web app for The Odin Project open source web dev curriculum https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker.

* Ruby version: ruby 3.0.3p157 (2021-11-24 revision 3fb7d2cadc)

* Rails version: 7.0.4

* ...

* Improvement To-Do:
  - implement simple form gem for form styling
    -already installed, re-install w/ bootstrap option
  - implement styling using latest version of Bootsrap
  - add validations to models
  - check strong params, make sure there aren't extras
  - routing: hide params in URL

* To-Do
  -IF NESTED FORM FAILS ADD INVERSE_OF
    - https://thoughtbot.com/blog/accepts-nested-attributes-for-with-has-many-through

  -submit _results to booking#new (flight_id, # of passengers)
  -create booking
    -create # nested passengers
    -params from _results (#_passengers, flight_id)

-fields_for nested passengers