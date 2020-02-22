class Nanny < ApplicationRecord
  belongs_to :user
  has_many :groups
  has_one :nanny_picture
  validates :name, presence: true
  validates :address, presence: true
  validates :mobile_number, presence: true
  validates :price_per_hour, presence: true, numericality: true
  validates :bio, presence: true
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
