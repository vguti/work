# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1	  = User.create(username: 'Ignacio', password: '12345678')
song1 	  = Song.create(title: 'Winds of Change', duration: 60*4 + 43)
artist1 	  = Artist.create(name: 'Scorpions', genere: 'Hard Rock', country: 'Germany')
album1  = Album.create(name: 'Crazy World')
playlist1 = Playlist.create(name: 'top40')

song1.artist = artist1
song1.album = album1
song1.save

album1.artist = artist1
album1.save

# puts User.first.inspect
puts Song.first.inspect
# puts Artist.first.inspect
# puts Album.first.inspect