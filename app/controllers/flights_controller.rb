class FlightsController < ApplicationController
  def index
    @airports = Airport.all

    # @flight_dates = Flight.all.today_or_after.collect(&:start).map { |d| d.to_date }.sort.uniq
    @flight_dates = Flight.all.today_or_after.collect(&:start).map(&:to_date).sort.uniq

    # Does join make query faster?
    if params[:origin].nil? || params[:destination].nil? || params[:flight_date].nil?
      @search_results = nil
    else
      @search_results = Flight.where('origin_id = ?', params[:origin])
                              .where('destination_id = ?', params[:destination])
                              .where('start::date = ?', params[:flight_date].to_date)
    end

    @number_of_passengers = params[:number_of_passengers]
  end

  private

  def flight_params
    params.require(:flight).permit(:origin_id, :destination_id, :flight_date, :number_of_passengers, :selected_flight)
  end
end
