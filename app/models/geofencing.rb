class Geofencing < ApplicationRecord
  validates :radius, :location, :latitude, :longitude, presence: true
end
