class Boat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :photo, PhotoUploader
  BOAT_TYPE_OPTIONS = ["Power", "Sail"]
  YEAR_OPTIONS = 1880..2020

  belongs_to :user
  has_many :bookings
  validates :make, :model, :capacity, :location, :price, :boat_type, :year, presence: true
  validates :boat_type, inclusion: { in: BOAT_TYPE_OPTIONS , message: "Select one of the list" }
  validates :year, inclusion: { in: YEAR_OPTIONS , message: "Select one of the list" }
  validates :capacity, :price, numericality: { greater_than: 0 }

end
