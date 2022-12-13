class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    
    # Want distinct dates. Despite only date being displayed due to formatting
    # it is still a DateTime object and thus different occurances of same date
    # are distinct
    # @flight_dates = Flight.today_or_after.distinct

    # @flight_dates = Flight.today_or_after
    # @flight_dates = @flight_dates.start.map(&:to_date).distinct

    # @flight_dates = Flight.all.collect(&:start).sort.uniq
    @flight_dates = Flight.all.collect(&:start).map { |d| d.to_date }.sort.uniq

    # @search_results = Flight.joins(:origin, :destination).where(origin: { origin_id: params[:origin] },
    #                               destination: { desination_id: params[:desination] }).where( date: params[:flight_date])
  
    @search_results = Flight.where('origin_id = ?', params[:origin])
                      .where('destination_id = ?', params[:destination])
                      .where( 'start::date = ?', params[:flight_date].to_date)
                      # .where( start: params[:flight_date])

    @number_of_passengers = params[:number_of_passengers]
  end

  private

  def flight_params
    params.require(:flight).permit(:origin_id, :destination_id, :flight_date, :number_of_passengers, :selected_flight)
  end
end
