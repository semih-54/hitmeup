class Contract < ApplicationRecord
  belongs_to :victim
  belongs_to :scenario
  belongs_to :user

  has_many :bookings
  has_many :hitmen
  has_one :victim
end
