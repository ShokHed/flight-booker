class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flight_dates = Flight.today_or_after.distinct


  end
end
