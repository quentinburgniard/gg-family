class TravelCompanion < ApplicationRecord
  has_one :travel_companion_appearance
  accepts_nested_attributes_for :travel_companion_appearance
end
