class Chef < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings
  belongs_to :user
  has_many :users, through: :bookings
  validates :first_name, :last_name, presence: true
  validates :location, :rate, :cuisine, presence: true

  # is_available?(at_date)
  # it checks for the existing bookings for this given chef
  # bookings? where(date: at_date) -> any?
  # it's not available true/false
end
