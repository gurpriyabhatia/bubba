class Group < ApplicationRecord
  has_one :group_picture
  belongs_to :users
  validates :descriptionm, presence: true
  validates :address, presence: true
  validates :location, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
