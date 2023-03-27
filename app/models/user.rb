class User < ApplicationRecord
  has_many :flats
  has_many :bookings, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
end
