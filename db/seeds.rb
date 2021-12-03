# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


artist = Artist.create(name: "Kero Kero Bonito")
artist2 = Artist.create(name: "Ariel Pink")
t = Track.create(title: "Well Rested", artist_id: 1)
t2 = Track.create(title: "Santa's in the Closet", artist_id: 2)
t = Track.create(title: "The River", artist_id: 1)
t2 = Track.create(title: "Scared Famous", artist_id: 2)

puts "Seeded."
