# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Owner.destroy_all
# PlantType.destroy_all
# Plant.destroy_all
require 'pry'

doc = Nokogiri::HTML(open("https://bloomscape.com/shop"))
content = doc.css("ul.products.columns-1")
binding.pry

# 20.times do
#     Owner.create(name: Faker::Owner.name)
#   end

# o1 = @owner = Owner.create!(name: "John")
# o2 = @owner = Owner.create!(name: "Bruno")
# o3 = @owner = Owner.create!(name: "Daemon")
# o4 = @owner = Owner.create!(name: "Barack")
# o5 = @owner = Owner.create!(name: "Bella")
# o6 = @owner = Owner.create!(name: "Cookie")

# pt1 = @plant_type = PlantType.create!(species: "Spider")
# pt2 = @plant_type = PlantType.create!(species: "Snake")
# pt3 = @plant_type = PlantType.create!(species: "Monstera Deliciosa")
# pt4 = @plant_type = PlantType.create!(species: "Philodendron Micans")
# pt5 = @plant_type = PlantType.create!(species: "Lucky Money Tree")
# pt6 = @plant_type = PlantType.create!(species: "Pothos")
# pt7 = @plant_type = PlantType.create!(species: "Red Maranta")

# p1 = @plant = Plant.create!(name: "Hairy Styles", owner: o1, plant_type: pt1)
# p2 = @plant = Plant.create!(name: "Cactus Perry", owner: o2, plant_type: pt2)
# p3 = @plant = Plant.create!(name: "Berry White", owner: o2, plant_type: pt2)
# p4 = @plant = Plant.create!(name: "Bitty Spears", owner: o2, plant_type: pt6)
# p5 = @plant = Plant.create!(name: "Georgia O'Keefe", owner: o3, plant_type: pt6)
# p6 = @plant = Plant.create!(name: "Urusla", owner: o3, plant_type: pt1)
# p7 = @plant = Plant.create!(name: "Big poppa", owner: o3, plant_type: pt3)
# p8 = @plant = Plant.create!(name: "B I G", owner: o4, plant_type: pt3)
# p9 = @plant = Plant.create!(name: "Tupac", owner: o5, plant_type: pt1)
# p10 = @plant = Plant.create!(name: "Leo DiCappitate", owner: o6, plant_type: pt6)
# p11 = @plant = Plant.create!(name: "Bernard", owner: o7, plant_type: pt6)
# p12 = @plant = Plant.create!(name: "Jack", owner: o5, plant_type: pt1)
# p13 = @plant = Plant.create!(name: "Leo DiCappitate", owner: o6, plant_type: pt2)
# p14 = @plant = Plant.create!(name: "Leo DiCappitate", owner: o6, plant_type: pt3)
