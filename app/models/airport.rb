class Airport < ApplicationRecord
  belongs_to :arrival, class_name: 'Flight'
  belongs_to :departure, class_name: 'Flight'
end
