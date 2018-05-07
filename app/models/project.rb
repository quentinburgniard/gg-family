class Project < ApplicationRecord
  belongs_to :workflow
  belongs_to :travel_companion
end
