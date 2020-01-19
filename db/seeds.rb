# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
PlantType.destroy_all
Plant.destroy_all

o1 = @owner = Owner.create!(name: "John")
o2 = @owner = Owner.create!(name: "Bruno")

pt1 = @plant_type = PlantType.create!(species: "Spider")
pt2 = @plant_type = PlantType.create!(species: "Snake")
pt3 = @plant_type = PlantType.create!(species: "Monstera Deliciosa")
pt4 = @plant_type = PlantType.create!(species: "Philodendron Micans")
pt5 = @plant_type = PlantType.create!(species: "Lucky Money Tree")
pt6 = @plant_type = PlantType.create!(species: "Pothos")
pt7 = @plant_type = PlantType.create!(species: "Red Maranta")

p1 = @plant = Plant.create!(name: "Hairy Styles", owner: o1, plant_type: pt1)
p2 = @plant = Plant.create!(name: "Cactus Perry", owner: o2, plant_type: pt2)