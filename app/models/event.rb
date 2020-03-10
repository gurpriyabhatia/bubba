class Event < ApplicationRecord
  belongs_to :group
  has_many :event_reviews, dependent: :destroy
  has_many :event_bookings, dependent: :destroy
  has_many :users, through: :event_bookings
  validates :name, :description, :date, :time, :address, presence: true
  validates :price, numericality: true
  validates :total_spaces, numericality: true, allow_nil: true
  validates :spaces_booked, numericality: true, allow_nil: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # TODO: Method for when a user books an event??
  # def add_attendee
  #   return if (total_spaces - spaces_booked).zero?
  #   puts spaces_booked.class
  #   spaces_booked = spaces_booked + 1
  # end
end
