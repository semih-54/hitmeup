class Contract < ApplicationRecord
  # belongs_to :victim
  belongs_to :scenario
  belongs_to :user
  belongs_to :hitman
  has_one_attached :proof, dependent: :destroy
  has_one_attached :victim_picture, dependent: :destroy

  STATUSES = ["pending", "accepted", "rejected", "completed"]
end
