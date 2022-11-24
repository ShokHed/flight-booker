class Flight < ApplicationRecord
  has_one :arrival, foreign_key: :arrival_id, class_name: 'Airport'
  has_one :departure, foreign_key: :departure_id, class_name: 'Airport'
end
