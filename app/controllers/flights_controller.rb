class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flight_dates = Flight.where('start > ?', DateTime.now)
  end
end
