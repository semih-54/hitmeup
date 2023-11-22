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
  victim_age: 25,
  victim_location: "Canggu, Bali, Indonesia",
  victim_description: "Brendan's my neighbour and thinks 'innit?' or 'bevvy' are acceptable words and Alcohol is his only source of fluid intake. Although this should be reason enough ... he also thinks it's okay to put up a christmas tree and sing christmas songs in Bali at 32°. So for the wellbeing of everybody I want him to have an 'accident' while decorating his tree on the 24. December so everybody but him can celebrate.",
  budget: "2x Nasi Campur and Brendan's Bike",
  status: "pending"
},
{
  expiration_date: Date.new(2026,05,12),
  victim_name: "Michele Comolli",
  victim_age: 25,
  victim_location: "Outpost, Canggu, Bali, Indonesia",
  victim_description: "Italian guy from Milan that moved to Bali after he got deported for putting pineapple on his pizza and offering the Ndrangheta-family to build them a website when blackmailed. Last seen at the beach trying to pick-up girls while showing them his new app to choose a nail cutting style.",
  budget: "32gb Telkomsel Data plan (30days) and Grabbike Voucher 2x free-rides",
  status: "pending"
}])

p "Created #{Contract.count} contracts"


Hitman.create!([{
  birth_year: "2005",
  description: "They admiringly call me the 'Balinese Ninja'.. my specialty's are creating deadly motorbike accidents, poisonous blowpipe (from the depths of the Canggu shortcut ricefields) for sneak attacks and as a young local I can convince a local mob to lynch a victim because he said Rendang is a malaysian dish"
},
{
  birth_year: "2000",
  description: "I am an ex Soldier, broke the Kebab eating record back in middle school (yes, 22 in one sitting!) and have 650 hours in Counter Strike. In short the best candidate for jobs that include: dressing up as a bus driver or cook, storming a house in infantry manner and drowning victims in toilet bowls. Also I do a rabona, tunnel through the victims legs with a football on the picture of proof so you know it was me. "
},
{
  birth_year: "1989",
  description: "They call me 'Leon the professional' because im tougher than the Sarung-selling Ladies on Batu Bolong beach. Once the Eiffel tower bent when I was doing pull ups on it and the rats of paris caught me when i was falling... out of respect! Also I'm french so I will take any Job, because everybody hates me already I can't make more enemies. I can summon the local rats set them on fire and throw them through your victims window. 50/50 success rate but at least it looks natural. "
}])

p "Created #{Hitman.count} Hitmen"

Scenario.create!([{
  name: "Brutal",
},
{
  name: "Traffic-accident",
},
{
  name: "Fake-accident",
},
{
  name: "Long-range kill",
},
{
  name: "Close and personal",

}])

p "Created #{Scenario.count} Scenarios"

Skill.create!([{
  name: "Nun-chacks, throwing stars and knife handling",
},
{
  name: "Military grade Rocket-launchers, assault rifles and hand grenades",
},
{
  name: "Silent and noiseless",
},
{
  name: "Hypnosis, psychological-attack"
}])

p "Created #{Skill.count} Skills"

User.create!([{
  email: killyou@flikflak.com,
  username: "xXnico69Xx420",
  password: "123456"
},
{
  email: Donaldtrump@tikitaka.com,
  username: "McLovin",
  password: "123456"
},
{
  email: barack@therealone.com.gov,
  username: "ObamasToothbrush",
  password: "123456"
}])

p "Created #{User.count} Users"
