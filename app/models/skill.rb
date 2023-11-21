class Skill < ApplicationRecord
  has_many :hitman_skills
  has_many :hitmen, through: :hitman_skills
end
