class Booking < ApplicationRecord
  belongs_to :contract
  belongs_to :hitman
end
