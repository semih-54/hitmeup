class Contract < ApplicationRecord
  # belongs_to :victim
  belongs_to :scenario
  belongs_to :user
  belongs_to :hitman
end