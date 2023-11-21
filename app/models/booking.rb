class Booking < ApplicationRecord
  belongs_to :contract
  belongs_to :hitman

  has_one :review
end
