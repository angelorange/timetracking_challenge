class Geofencing < ApplicationRecord
  has_many :time_trackings, dependent: :destroy
  validates :radius, :location, :latitude, :longitude, presence: true
end
