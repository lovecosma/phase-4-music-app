# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: 'lovecosma', password: '1234')

p = Playlist.create(name: "Civilization II", user_id: user.id)
p2 = Playlist.create(name: "Scared Famous", user_id: user.id)

artist = Artist.create(name: "Kero Kero Bonito")
artist2 = Artist.create(name: "Ariel Pink")
t1 = Track.create(title: "Well Rested", artist_id: 1)
t2 = Track.create(title: "Santa's in the Closet", artist_id: 2)
t3 = Track.create(title: "The River", artist_id: 1)
t4 = Track.create(title: "Scared Famous", artist_id: 2)

p2.tracks << [t2, t4] 
p.tracks << [t1, t3] 

puts "Seeded."
