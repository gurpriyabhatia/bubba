class Group < ApplicationRecord
  has_one_attached :group_picture
  has_many :users
  has_many :events
  has_many :nannies
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :address, presence: true
  validates :location, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
