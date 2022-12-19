class Flight < ApplicationRecord
  belongs_to :origin, foreign_key: :origin_id, class_name: 'Airport'#, inverse_of: :arrivals
  belongs_to :destination, foreign_key: :destination_id, class_name: 'Airport'#, inverse_of: :departures
  has_many :bookings, inverse_of: :flight
  has_many :passengers, through: :bookings

  def flight_start_display
    start.strftime("%m/%d/%Y")
  end

  def search_results_datetime
    start.strftime("%F %H:%M")
  end

  def search_results_display
    "#{origin.code} -> #{destination.code}, #{search_results_datetime}"
  end

  scope :today_or_after, -> { where('start::date >= ?', Date.today).distinct }
end
