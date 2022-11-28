class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flight_dates = Flight.today_or_after.distinct

    @search_results = Flight.join(:origin, :destination).where(origin: { origin_id: params[:origin] },
                                  destination: { desination_id: params[:desination] }).where( date: params[:flight_date])
  end

  private

  def flight_params
    params.require(:flight).permit(:origin_id, :destination_id, :flight_date)
  end
end
