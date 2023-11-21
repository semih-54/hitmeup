class Scenario < ApplicationRecord
  has_many :contracts
  has_many :hitman_scenarios
  has_many :hitmen, through: :hitman_scenarios
end
