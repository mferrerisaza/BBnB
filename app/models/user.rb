class User < ApplicationRecord
  has_one :profile
  has_many :boats, dependent: :destroy
  has_many :bookings
  has_many :boats, through: :bookings, as: :booked_boats
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
