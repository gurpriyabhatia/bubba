class Nanny < ApplicationRecord
  belongs_to :user
  has_many :groups
  validates :name, presence: true
  validates :address, presence: true
  validates :mobile_number, presence: true
  validates :price_per_hour, presence: true, numericality: true
  validates :bio, presence: true
  # Commenting the below out until the Booking and Review models are created :)
  # has_many :bookings, dependent: :destroy
  # has_many :reviews, through: :bookings
end
