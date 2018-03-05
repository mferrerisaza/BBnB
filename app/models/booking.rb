class Booking < ApplicationRecord
  STATUS_OPTIONS  = ["Pending", "Accepted", "Declined"]
  belongs_to :boat
  belongs_to :user

  validates :start_date, :end_date, presence: true
  end
