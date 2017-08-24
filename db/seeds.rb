# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destrucution des rooms"
Room.destroy_all
User.destroy_all
puts "création user 1"
user_1 = User.create!(username: "Elo", email: "elodie@gmail.com", password: "123456")
puts "Création room"
room_1 = Room.new(title: "Dream Team Room", description: "Best Room ever", custom_message: "Love you all guys", user_id: user_1.id)
puts "save room"
room_1.save
puts "done"

puts "création track 1, 2, 3"

track_1 = Track.create(title: "shakira chantaje", artist: "Shakira", duration: 400, room_id: Room.first.id, youtubeid: "6Mgqbai3fKo")
puts "création track 2"
track_2 = Track.create(title: "7/11", artist: "Beyonce", duration: 600, room_id: Room.first.id, youtubeid: "k4YRWT_Aldo")
track_3 = Track.create(title: "Hight life", artist: "Sia", duration: 600, room_id: Room.first.id, youtubeid: "C7caKdREkiM")


puts "création user 2"
user_2 = User.create!(username: "Fabi", email: "fabienne@gmail.com", password: "123456")
puts "Création room 2"
room_3 = Room.new(title: "La cool room", description: "The coolest room", custom_message: "Really cool songs", user_id: user_2.id)
puts "save room 2"
room_3.save
puts "done"

puts "création track 4, 5, 6"

track_4 = Track.create(title: "Una vez mas", artist: "Rilès", duration: 10000, room_id: Room.last.id, youtubeid: "uO1KKz8KxAw")
track_5 = Track.create(title: "Alors alors", artist: "Big flo et Oli", duration: 500, room_id: Room.last.id, youtubeid: "UMlLcjpzzjc")
track_6 = Track.create(title: "Show must go on", artist: "Rilès", duration: 400, room_id: Room.last.id, youtubeid: "Ig3w4VSJP-8")
puts "fin de création tracks 4, 5, 6"
