class TravelCompanion < ApplicationRecord
  belongs_to :travel_companion_appearance
  accepts_nested_attributes_for :travel_companion_appearance
end
