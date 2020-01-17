# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

o1 = @owners = Owner.create!(name: "John")
o2 = @owners = Owner.create!(name: "Bruno")

pt1 = @planttype = PlantType.create!(species: Spider)
pt2 = @planttype = PlantType.create!(species: Snake)

p1 = @plants = Plant.create!(name: "Hairy Styles", owner: o1, type: pt1)
p2 = @plants = Plant.create!(name: "Cactus Perry", owner: o2, type: pt2)