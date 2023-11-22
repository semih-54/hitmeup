# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "date"

ApplicationRecord.destroy_all
Contract.destroy_all
HitmanScenario.destroy_all
HitmanSkill.destroy_all
Hitman.destroy_all
Scenario.destroy_all
Skill.destroy_all
User.destroy_all

Contract.create!([{
  expiration_date: Date.new(2024,01,23),
  victim_name: "Ronaldinho",
  victim_age: 43,
  victim_location: "Rio Verde, Brasil",
  victim_description: "A famous football player famous for his moves and exceptional style. He is very well known so it will not be an easy task but I want him gone since he scored the 1-0 with Brasil against Turkey in 2002. A shame that this should be his last FlipFlap.",
  budget: "Kidney (left) and 2L Virgin Olive Oil from Turkey",
  status: "accepted"
},
{
  expiration_date: Date.new(2023,12,24),
  victim_name: "Brendan",
  victim_age: 34,
  victim_location: "Canggu, Bali, Indonesia",
  victim_description: "Brendan's my neighbour and thinks 'innit?' or 'bevvy' are acceptable words and Alcohol is his only source of fluid intake. Although this should be a red line and reason enough ... he also thinks it's okay to put up a christmas tree and sing christmas songs in Bali at 32°. So I want him to have an 'accident' while decorating his tree on the 24. December.",
  budget: "2x Nasi Campur and Brendan's Bike",
  status: "pending"
},
{
  expiration_date: Date.new(2026,05,12),
  victim_name: "",
  victim_age: 43,
  victim_location: "Rio Verde, Brasil",
  victim_description: "",
  budget: "Kidney (left) and 2L Virgin Olive Oil",
  status: "pending"
}])

p "Created #{Contract.count} contracts"
