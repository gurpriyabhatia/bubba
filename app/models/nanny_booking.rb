class NannyBooking < ApplicationRecord
  validates :date, :number_of_children, :address, presence: true
  validates :number_of_children, numericality: true
  belongs_to :user
  belongs_to :nanny
end
