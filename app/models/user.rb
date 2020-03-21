class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :event_bookings, dependent: :destroy
  has_many :events, through: :event_bookings
  has_one :nanny, dependent: :destroy
  belongs_to :group, optional: true
  has_many :nanny_bookings, dependent: :destroy
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
