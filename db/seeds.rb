# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


singapore = Destination.create(latitude: "1.290270", longitude: "103.851959")
location_b = Destination.create(latitude: "30.26715", longitude: "-97.74306")
location_c = Destination.create(latitude: "45.512794", longitude: "-122.679565")
