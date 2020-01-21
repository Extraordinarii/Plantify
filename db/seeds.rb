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


o1 = @owner = Owner.create!(name: "John", username: "john123", password: "123" )
o2 = @owner = Owner.create!(name: "Bruno", username: "bruno123", password: "123" )
o3 = @owner = Owner.create!(name: "Daemon", username: "daemon_duck", password: "123" )
o4 = @owner = Owner.create!(name: "Barack", username: "rockababy", password: "123" )
o5 = @owner = Owner.create!(name: "Bella", username: "bellzabub", password: "123" )
o6 = @owner = Owner.create!(name: "Cookie", username: "cookarina", password: "123" )

pt1 = @plant_type = PlantType.create!(species: "Spider")
pt2 = @plant_type = PlantType.create!(species: "Snake")
pt3 = @plant_type = PlantType.create!(species: "Monstera Deliciosa")
pt4 = @plant_type = PlantType.create!(species: "Philodendron Micans")
pt5 = @plant_type = PlantType.create!(species: "Lucky Money Tree")
pt6 = @plant_type = PlantType.create!(species: "Pothos")
pt7 = @plant_type = PlantType.create!(species: "Red Maranta")
pt8 = @plant_type = PlantType.create!(species: "Bird's Nest Fern")
pt9 = @plant_type = PlantType.create!(species: "ZZ Plant")
pt10 = @plant_type = PlantType.create!(species: "Calathea Rattlesnake")
pt11 = @plant_type = PlantType.create!(species: "Parlor Palm")
pt12 = @plant_type = PlantType.create!(species: "Alocasia Polly")
pt13 = @plant_type = PlantType.create!(species: "Air Plant")
pt14 = @plant_type = PlantType.create!(species: "Marimo Moss Ball")
pt15 = @plant_type = PlantType.create!(species: "Hoya Heart Plant")


p1 = @plant = Plant.create!(name: "Hairy Styles", owner: o1, plant_type: pt1)
p2 = @plant = Plant.create!(name: "Cactus Perry", owner: o2, plant_type: pt2)
p3 = @plant = Plant.create!(name: "Berry White", owner: o2, plant_type: pt2)
p4 = @plant = Plant.create!(name: "Bitty Spears", owner: o2, plant_type: pt6)
p5 = @plant = Plant.create!(name: "Georgia O'Keefe", owner: o3, plant_type: pt6)
p6 = @plant = Plant.create!(name: "Urusla", owner: o3, plant_type: pt1)
p7 = @plant = Plant.create!(name: "Big poppa", owner: o3, plant_type: pt3)
p8 = @plant = Plant.create!(name: "B I G", owner: o4, plant_type: pt3)
p9 = @plant = Plant.create!(name: "Tupac", owner: o5, plant_type: pt1)
p10 = @plant = Plant.create!(name: "Leo DiCappitate", owner: o6, plant_type: pt6)
p11 = @plant = Plant.create!(name: "Bernard", owner: o5, plant_type: pt6)
p12 = @plant = Plant.create!(name: "Jack", owner: o5, plant_type: pt1)
p13 = @plant = Plant.create!(name: "Leona", owner: o6, plant_type: pt2)
p14 = @plant = Plant.create!(name: "Cousin Vinny", owner: o6, plant_type: pt3)
