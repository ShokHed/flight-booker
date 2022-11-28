class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    # @flight_dates = Flight.where('start > ?', DateTime.now)
    @flight_dates = Flight.today_or_after
  end
end
