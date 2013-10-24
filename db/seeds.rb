# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Pest Colours
Colour.create(name: "Red")
Colour.create(name: "Blue")
Colour.create(name: "Green")

#Pest Types
PestType.create(name: 'Dog')
PestType.create(name: 'Cat')
PestType.create(name: 'Fox')