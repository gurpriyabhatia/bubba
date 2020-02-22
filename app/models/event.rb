class Event < ApplicationRecord
  belongs_to :group
  has_many :event_reviews
  validates :name, :description, :date, :time, :address, presence: true
  validates :price, numericality: true
  validates :availability, numericality: true, allow_nil: true
end
