class Chef < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :first_name, :last_name, presence: true
  validates :location, :rate, :cuisine, presence: true
end
