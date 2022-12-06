class Airport < ApplicationRecord
  has_many :arrivals, class_name: 'Flight', foreign_key: :destination_id#, inverse_of: :origin
  has_many :departures, class_name: 'Flight', foreign_key: :origin_id#, inverse_of: :destination

  def name_city_state
    "#{name} - #{city}, #{state}"
  end
end
