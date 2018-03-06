class User < ApplicationRecord
  has_one :profile
  has_many :boats, dependent: :destroy
  has_many :bookings
  has_many :booked_boats, through: :bookings, source: :boat
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

