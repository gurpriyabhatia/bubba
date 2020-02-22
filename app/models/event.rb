class Event < ApplicationRecord
  belongs_to :group
  has_many :event_reviews, dependent: :destroy
  has_many :event_bookings, dependent: :destroy
  has_many :users, through: :event_bookings
  validates :name, :description, :date, :time, :address, presence: true
  validates :price, numericality: true
  validates :availability, numericality: true, allow_nil: true

  def add_attendee
    return if availability.zero?

    new_availability = self.availability -= 1
    update(availability: new_availability)
  end
end
