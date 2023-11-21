class Hitman < ApplicationRecord
  belongs_to :user

  has_many :hitman_skills, dependent: :destroy
  has_many :skills, through: :hitman_skills
  has_many :hitman_scenarios, dependent: :destroy
  has_many :scenarios, through: :hitman_scenarios
  has_many :contracts, dependent: :destroy
end
