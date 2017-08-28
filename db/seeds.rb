# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destrucution des rooms"
Room.destroy_all
puts "destrucution des users"
User.destroy_all
puts "destrucution des tracks"
Track.destroy_all
puts"destruction messages"
Message.destroy_all
puts "création user 1"
user_1 = User.create!(username: "Meryl", email: "meryl@gmail.com", password: "123456")
puts "Création room"
room_1 = Room.new(title: "Running moment", description: "Good vibes & motivation", custom_message: "Sport time girls ! Let's run together with this amazing music !", user_id: user_1.id)
puts "save room"
room_1.save
puts "création des 10 tracks de la room 1"
track_1 = Track.create(title: "Shape of You", artist: "Ed Sheeran", duration: 240, room_id: Room.first.id, youtubeid: "JGwWNGJdvx8")
track_2 = Track.create(title: "Clean Bandit", artist: "Rockabye ft. Sean Paul & Anne-Marie", duration: 300, room_id: Room.first.id, youtubeid: "papuvlVeZg8")
track_3 = Track.create(title: "Ain't Your Mama", artist: "Jennifer Lopez", duration: 500, room_id: Room.first.id, youtubeid: "Pgmx7z49OEk")
track_4 = Track.create(title: "Chained To The Rhythm", artist: "Katy Perry", duration: 300, room_id: Room.first.id, youtubeid: "Um7pMggPnug")
track_5 = Track.create(title: "Swalla", artist: "Jason Derulo", duration: 300, room_id: Room.first.id, youtubeid: "NGLxoKOvzu4")
track_6 = Track.create(title: "Sua Cara", artist: "Major Lazer", duration: 250, room_id: Room.first.id, youtubeid: "omzk3klIy0E")
track_7 = Track.create(title: "Loca", artist: "Shakira", duration: 230, room_id: Room.first.id, youtubeid: "XAhTt60W7qo")
track_8 = Track.create(title: "Boys & Girls", artist: "will.i.am", duration: 300, room_id: Room.first.id, youtubeid: "omzk3klIy0E")
track_9 = Track.create(title: "Only Girl", artist: "Rihanna", duration: 350, room_id: Room.first.id, youtubeid: "pa14VNsdSYM")
track_10 = Track.create(title: "Hunter", artist: "Galantis", duration: 330, room_id: Room.first.id, youtubeid: "2aa6daeNxVI")


puts "création user 2"
user_2 = User.create!(username: "Shera", email: "shera@gmail.com", password: "123456")
puts "Création room 2"
room_2 = Room.new(title: "Chill and relax", description: "The coolest room to hanging out", custom_message: "Hello girls, let's hanging out and having fun together ! Love you <3", user_id: user_2.id)
puts "save room 2"
room_2.save
puts "création des 10 tracks de la room 2"
track_11 = Track.create(title: "Unexpected", artist: "Rilès", duration: 260, room_id: room_2.id, youtubeid: "Th5xOYhVz74")
puts "création track 12"
track_12 = Track.create(title: "Coco Câline", artist: "Julien Doré", duration: 360, room_id: room_2.id, youtubeid: "Zqn41lMIGg8")
puts "création track 13"
track_13 = Track.create(title: "Lean On", artist: "Major Lazer & DJ Snake", duration: 400, room_id: room_2.id, youtubeid: "YqeW9_5kURI")
puts "création track 14"
track_14 = Track.create(title: "High Hopes", artist: "Kodaline", duration: 500, room_id: room_2.id, youtubeid: "G1FIfaP7Tu0")
puts "création track 15"
track_15 = Track.create(title: "Gravitation", artist: "Petit Biscuit & Møme", duration: 300, room_id: room_2.id, youtubeid: "TOfTsI4joOs")
puts "création track 16"
track_16 = Track.create(title: "Dig Down", artist: "MUSE", duration: 350, room_id: room_2.id, youtubeid: "b4ozdiGys5g")
puts "création track 17"
track_17 = Track.create(title: "Thunder", artist: "Imagine Dragons", duration: 230, room_id: room_2.id, youtubeid: "fKopy74weus")
puts "création track 18"
track_18 = Track.create(title: "Back Home", artist: "Fritz Kalkbrenner", duration: 250, room_id: room_2.id, youtubeid: "5g7j0TrYKMk")
puts "création track 19"
track_19 = Track.create(title: "Dynabeat", artist: "Jain", duration: 300, room_id: room_2.id, youtubeid: "vogjd9rzUNQ")
puts "création track 20"
track_20 = Track.create(title: "Falling", artist: "Vera", duration: 330, room_id: room_2.id, youtubeid: "BtWgUGCCtbQ")

puts "création user 3"
user_3 = User.create!(username: "Zoé", email: "zoe@gmail.com", password: "123456")
puts "Création room 3"
room_3 = Room.new(title: "Before partying", description: "The best room for the preparty !", custom_message: "Hi sweeties, I'm going out tonight, meeting friends to have a few drinks, have fun <3", user_id: user_3.id)
puts "save room 3"
room_3.save
puts "création des 10 tracks de la room 3"
track_21 = Track.create(title: "Boys & Girls", artist: "will.i.am", duration: 330, room_id: room_3.id, youtubeid: "2aa6daeNxVI")
track_22 = Track.create(title: "Chantaje", artist: "Shakira", duration: 300, room_id: room_3.id, youtubeid: "6Mgqbai3fKo")
track_23 = Track.create(title: "Cheap Thrills", artist: "Sia", duration: 360, room_id: room_3.id, youtubeid: "nYh-n7EOtMA")
track_24 = Track.create(title: "7/11", artist: "Beyonce", duration: 400, room_id: room_3.id, youtubeid: "k4YRWT_Aldo")
track_25 = Track.create(title: "This Is What You Came For", artist: "Calvin Harris", duration: 350, room_id: room_3.id, youtubeid: "kOkQ4T5WO9E")
track_26 = Track.create(title: "Girls Like ft. Zara Larsson", artist: "Tinie Tempah", duration: 330, room_id: room_3.id, youtubeid: "OEiva3cMv6k")
track_27 = Track.create(title: "Light It Up", artist: "Major Lazer", duration: 320, room_id: room_3.id, youtubeid: "qDcFryDXQ7U")
track_28 = Track.create(title: "Team", artist: "Iggy Azalea", duration: 300, room_id: room_3.id, youtubeid: "dSTRTv0xVlU")
track_29 = Track.create(title: "Bad Girls", artist: "M.I.A.", duration: 200, room_id: room_3.id, youtubeid: "3Yuqxl284cg")
track_30 = Track.create(title: "M.I.L.F. $", artist: "Fergie", duration: 230, room_id: room_3.id, youtubeid: "bsUWK-fixiA")

puts "création user 4"
user_4 = User.create!(username: "Marie", email: "marie@gmail.com", password: "123456")
puts "Création room 4"
room_4 = Room.new(title: "Soft music and relaxation", description: "The best way to relax", custom_message: "Hello girls, listen to this soft music to relax together", user_id: user_4.id)
puts "save room 4"
room_4.save
puts "création des 10 tracks de la room 4"
track_31 = Track.create(title: "High Hopes", artist: "Kodaline", duration: 330, room_id: room_4.id, youtubeid: "G1FIfaP7Tu0")
track_32 = Track.create(title: "Una Mattina", artist: "Ludovico Einaudi", duration: 230, room_id: room_4.id, youtubeid: "EoaPhxNubL0")
track_33 = Track.create(title: "Facing The Sun ", artist: "Fritz Kalkbrenner", duration: 280, room_id: room_4.id, youtubeid: "zm1lbSLZ4SU")
track_34 = Track.create(title: "Sky and Sand", artist: "Paul Kalkbrenner", duration: 300, room_id: room_4.id, youtubeid: "XINlEYXA3k0")
track_35 = Track.create(title: "Ohio", artist: "Damien Jurado", duration: 800, room_id: room_4.id, youtubeid: "2FswQIz19XE")
track_36 = Track.create(title: "Another Love", artist: "Tom Odell", duration: 500, room_id: room_4.id, youtubeid: "4ZHwu0uut3k")
track_37 = Track.create(title: "Stolen Dance", artist: "Milky Chance", duration: 330, room_id: room_4.id, youtubeid: "iX-QaNzd-0Y")
track_38 = Track.create(title: "Hideaway", artist: "Kiesza", duration: 330, room_id: room_4.id, youtubeid: "ESXgJ9-H-2U")
track_39 = Track.create(title: "Tropical", artist: "Summer mixt by Gio", duration: 320, room_id: room_4.id, youtubeid: "ozrggrnZKqY")
track_40 = Track.create(title: "Amelie Soundtrack ", artist: "Yann Tiersen", duration: 300, room_id: room_4.id, youtubeid: "7wCLK9iOPDw")

puts "création user 5"
user_5 = User.create!(username: "Elodie", email: "elodie@gmail.com", password: "123456")
puts "création user 6"
user_6 = User.create!(username: "Fabienne", email: "fabienne@gmail.com", password: "123456")
puts "création user 7"
user_7 = User.create!(username: "Roselyne", email: "roselyne@gmail.com", password: "123456")
