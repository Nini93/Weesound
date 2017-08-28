# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destruction des rooms"
Room.destroy_all
puts "destrucution des users"
User.destroy_all
puts "destrucution des tracks"
Track.destroy_all
puts"destruction messages"
Message.destroy_all
# Création Meryl et 3 rooms associées
puts "création user 1"
user_1 = User.create!(username: "Meryl", email: "meryl@gmail.com", password: "123456")
puts "Création room"
room_1 = Room.new(title: "Running moment", description: "Good vibes & motivation", custom_message: "Sport time girls ! Let's run together with this amazing music !", photo_url: "https://brand.campaign.adidas.com/Images/running-fw17-clp-itemselector-item-2-background-desktop_tcm41-151410.jpg?locale=fr_FR&device=desktop&version=2",  user_id: user_1.id)
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

room_5 = Room.new(title: "Summer partying", description: "Sun, beach, friends and music !", custom_message: "It's summer girls ! Let's enjoy good music", user_id: user_1.id, photo_url: "https://media.funradio.fr/cache/Gz2PsDDBOuQOFK2_BpB8Sg/880v587-0/online/image/2015/0622/7778830100_fete-sur-la-plage-illustration.jpg")
puts "save room"
room_5.save
puts "création des 10 tracks de la room 5"
track_41 = Track.create(title: "Boys & Girls", artist: "will.i.am", duration: 330, room_id: room_5.id, youtubeid: "2aa6daeNxVI")
track_42 = Track.create(title: "Chantaje", artist: "Shakira", duration: 300, room_id: room_5.id, youtubeid: "6Mgqbai3fKo")
track_43 = Track.create(title: "Cheap Thrills", artist: "Sia", duration: 360, room_id: room_5.id, youtubeid: "nYh-n7EOtMA")
track_44 = Track.create(title: "7/11", artist: "Beyonce", duration: 400, room_id: room_5.id, youtubeid: "k4YRWT_Aldo")
track_45 = Track.create(title: "This Is What You Came For", artist: "Calvin Harris", duration: 350, room_id: room_5.id, youtubeid: "kOkQ4T5WO9E")
track_46 = Track.create(title: "Girls Like ft. Zara Larsson", artist: "Tinie Tempah", duration: 330, room_id: room_5.id, youtubeid: "OEiva3cMv6k")
track_47 = Track.create(title: "Light It Up", artist: "Major Lazer", duration: 320, room_id: room_5.id, youtubeid: "qDcFryDXQ7U")
track_48 = Track.create(title: "Team", artist: "Iggy Azalea", duration: 300, room_id: room_5.id, youtubeid: "dSTRTv0xVlU")
track_49 = Track.create(title: "Bad Girls", artist: "M.I.A.", duration: 200, room_id: room_5.id, youtubeid: "3Yuqxl284cg")
track_50 = Track.create(title: "M.I.L.F. $", artist: "Fergie", duration: 230, room_id: room_5.id, youtubeid: "bsUWK-fixiA")

room_6 = Room.new(title: "Quiet moment", description: "Best way to relax : listen this room !", custom_message: "Hello girls ! Enjoy this moment with me!", user_id: user_1.id, photo_url: "http://cdn.oboxeditions.com/sites/prod/files/styles/largehd/public/article/samedi-15-accouchement-tres-relax-pour-une-fille-vraiment-pressee-281027.jpg")
puts "save room"
room_6.save
puts "création des 10 tracks de la room 6"
track_51 = Track.create(title: "High Hopes", artist: "Kodaline", duration: 330, room_id: room_6.id, youtubeid: "G1FIfaP7Tu0")
track_52 = Track.create(title: "Una Mattina", artist: "Ludovico Einaudi", duration: 230, room_id: room_6.id, youtubeid: "EoaPhxNubL0")
track_53 = Track.create(title: "Facing The Sun ", artist: "Fritz Kalkbrenner", duration: 280, room_id: room_6.id, youtubeid: "zm1lbSLZ4SU")
track_54 = Track.create(title: "Sky and Sand", artist: "Paul Kalkbrenner", duration: 300, room_id: room_6.id, youtubeid: "XINlEYXA3k0")
track_55 = Track.create(title: "Ohio", artist: "Damien Jurado", duration: 800, room_id: room_6.id, youtubeid: "2FswQIz19XE")
track_56 = Track.create(title: "Another Love", artist: "Tom Odell", duration: 500, room_id: room_6.id, youtubeid: "4ZHwu0uut3k")
track_57 = Track.create(title: "Stolen Dance", artist: "Milky Chance", duration: 330, room_id: room_6.id, youtubeid: "iX-QaNzd-0Y")
track_58 = Track.create(title: "Hideaway", artist: "Kiesza", duration: 330, room_id: room_6.id, youtubeid: "ESXgJ9-H-2U")
track_59 = Track.create(title: "Tropical", artist: "Summer mixt by Gio", duration: 320, room_id: room_6.id, youtubeid: "ozrggrnZKqY")
track_60 = Track.create(title: "Amelie Soundtrack ", artist: "Yann Tiersen", duration: 300, room_id: room_6.id, youtubeid: "7wCLK9iOPDw")

# Création Shera et 2 rooms associées
puts "création user 2"
user_2 = User.create!(username: "Shera", email: "shera@gmail.com", password: "123456")
puts "Création room 2"
room_2 = Room.new(title: "Chill and relax", description: "The coolest room to hanging out", custom_message: "Hello girls, let's hanging out and having fun together ! Love you <3", user_id: user_2.id, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3ftSP8FERt0z-nPFSDAVEw0qfhpNYNXE3bdUnXchKtK0TXmU0")
puts "save room 2"
room_2.save
puts "création des 10 tracks de la room 2"
track_11 = Track.create(title: "Unexpected", artist: "Rilès", duration: 260, room_id: room_2.id, youtubeid: "Th5xOYhVz74")
track_12 = Track.create(title: "Coco Câline", artist: "Julien Doré", duration: 360, room_id: room_2.id, youtubeid: "Zqn41lMIGg8")
track_13 = Track.create(title: "Lean On", artist: "Major Lazer & DJ Snake", duration: 400, room_id: room_2.id, youtubeid: "YqeW9_5kURI")
track_14 = Track.create(title: "High Hopes", artist: "Kodaline", duration: 500, room_id: room_2.id, youtubeid: "G1FIfaP7Tu0")
track_15 = Track.create(title: "Gravitation", artist: "Petit Biscuit & Møme", duration: 300, room_id: room_2.id, youtubeid: "TOfTsI4joOs")
track_16 = Track.create(title: "Dig Down", artist: "MUSE", duration: 350, room_id: room_2.id, youtubeid: "b4ozdiGys5g")
track_17 = Track.create(title: "Thunder", artist: "Imagine Dragons", duration: 230, room_id: room_2.id, youtubeid: "fKopy74weus")
track_18 = Track.create(title: "Back Home", artist: "Fritz Kalkbrenner", duration: 250, room_id: room_2.id, youtubeid: "5g7j0TrYKMk")
track_19 = Track.create(title: "Dynabeat", artist: "Jain", duration: 300, room_id: room_2.id, youtubeid: "vogjd9rzUNQ")
track_20 = Track.create(title: "Falling", artist: "Vera", duration: 330, room_id: room_2.id, youtubeid: "BtWgUGCCtbQ")

room_7 = Room.new(title: "Sport time", description: "Motivation sweeties ! This music is gonna pimp your sport's time", custom_message: "Hello sweeties ! Share my training session with me with this cool music!", user_id: user_2.id, photo_url:"https://ak9.picdn.net/shutterstock/videos/18610496/thumb/1.jpg")
puts "save room"
room_7.save
puts "création des 10 tracks de la room 7"
track_61 = Track.create(title: "Shape of You", artist: "Ed Sheeran", duration: 240, room_id: room_7.id, youtubeid: "JGwWNGJdvx8")
track_62 = Track.create(title: "Clean Bandit", artist: "Rockabye ft. Sean Paul & Anne-Marie", duration: 300, room_id: Room.first.id, youtubeid: "papuvlVeZg8")
track_63 = Track.create(title: "Ain't Your Mama", artist: "Jennifer Lopez", duration: 500, room_id: room_7.id, youtubeid: "Pgmx7z49OEk")
track_64 = Track.create(title: "Chained To The Rhythm", artist: "Katy Perry", duration: 300, room_id: room_7.id, youtubeid: "Um7pMggPnug")
track_65 = Track.create(title: "Swalla", artist: "Jason Derulo", duration: 300, room_id: room_7.id, youtubeid: "NGLxoKOvzu4")
track_66 = Track.create(title: "Sua Cara", artist: "Major Lazer", duration: 250, room_id: room_7.id, youtubeid: "omzk3klIy0E")
track_67 = Track.create(title: "Loca", artist: "Shakira", duration: 230, room_id: room_7.id, youtubeid: "XAhTt60W7qo")
track_68 = Track.create(title: "Boys & Girls", artist: "will.i.am", duration: 300, room_id: room_7.id, youtubeid: "omzk3klIy0E")
track_69 = Track.create(title: "Only Girl", artist: "Rihanna", duration: 350, room_id: room_7.id, youtubeid: "pa14VNsdSYM")
track_70 = Track.create(title: "Hunter", artist: "Galantis", duration: 330, room_id: room_7.id, youtubeid: "2aa6daeNxVI")


# Création Zoé et 2 rooms associées
puts "création user 3"
user_3 = User.create!(username: "Zoé", email: "zoe@gmail.com", password: "123456")
puts "Création room 3"
room_3 = Room.new(title: "Before partying", description: "The best room for the preparty !", custom_message: "Hi sweeties, I'm going out tonight, meeting friends to have a few drinks, have fun <3", user_id: user_3.id, photo_url: "http://wac.450f.edgecastcdn.net/80450F/tsminteractive.com/files/2012/08/Summer-party.jpg")
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

puts "Création room 8"
room_8 = Room.new(title: "Chill and relax with Zoé", description: "The best way to relax!", custom_message: "Ladies, let's chill together with this cool music, love you!", user_id: user_3.id, photo_url: "https://static.pexels.com/photos/1613/person-woman-summer-girl.jpg")
puts "save room 8"
room_8.save
puts "création des 10 tracks de la room 8"
track_71 = Track.create(title: "High Hopes", artist: "Kodaline", duration: 330, room_id: room_8.id, youtubeid: "G1FIfaP7Tu0")
track_72 = Track.create(title: "Amelie Soundtrack", artist: "Yann Tiersen", duration: 300, room_id: room_8.id, youtubeid: "7wCLK9iOPDw")
track_73 = Track.create(title: "Another Love", artist: "Tom Odell", duration: 360, room_id: room_8.id, youtubeid: "4ZHwu0uut3k")
track_74 = Track.create(title: "Hideaway", artist: "Kiesza", duration: 400, room_id: room_8.id, youtubeid: "ESXgJ9-H-2U")
track_75 = Track.create(title: "This Is What You Came For", artist: "Calvin Harris", duration: 350, room_id: room_8.id, youtubeid: "kOkQ4T5WO9E")
track_76 = Track.create(title: "Tropical", artist: "Summer mixt by Gio", duration: 330, room_id: room_8.id, youtubeid: "ozrggrnZKqY")
track_77 = Track.create(title: "Sky and Sand", artist: "Paul Kalkbrenner", duration: 320, room_id: room_8.id, youtubeid: "XINlEYXA3k0")
track_78 = Track.create(title: "Stolen Dance", artist: "Iggy Azalea", duration: 300, room_id: room_8.id, youtubeid: "iX-QaNzd-0Y")
track_79 = Track.create(title: "Coco Câline", artist: "Julien Doré", duration: 200, room_id: room_8.id, youtubeid: "Zqn41lMIGg8")
track_80 = Track.create(title: "Facing The Sun", artist: "Fritz Kalkbrenner", duration: 230, room_id: room_8.id, youtubeid: "zm1lbSLZ4SU")

# Création Marie et 2 rooms associées
puts "création user 4"
user_4 = User.create!(username: "Marie", email: "marie@gmail.com", password: "123456")
puts "Création room 4"
room_4 = Room.new(title: "Soft music and relaxation", description: "The best way to relax", custom_message: "Hello girls, listen to this soft music to relax together", user_id: user_4.id, photo_url: "https://unsplash.com/search/photos/relax?photo=AsJirOOLN_s")
puts "save room 4"
room_4.save
puts "création des 10 tracks de la room 4"
track_31 = Track.create(title: "High Hopes", artist: "Kodaline", duration: 330, room_id: room_4.id, youtubeid: "G1FIfaP7Tu0")
track_32 = Track.create(title: "Una Mattina", artist: "Ludovico Einaudi", duration: 230, room_id: room_4.id, youtubeid: "EoaPhxNubL0")
track_33 = Track.create(title: "Facing The Sun", artist: "Fritz Kalkbrenner", duration: 280, room_id: room_4.id, youtubeid: "zm1lbSLZ4SU")
track_34 = Track.create(title: "Sky and Sand", artist: "Paul Kalkbrenner", duration: 300, room_id: room_4.id, youtubeid: "XINlEYXA3k0")
track_35 = Track.create(title: "Ohio", artist: "Damien Jurado", duration: 800, room_id: room_4.id, youtubeid: "2FswQIz19XE")
track_36 = Track.create(title: "Another Love", artist: "Tom Odell", duration: 500, room_id: room_4.id, youtubeid: "4ZHwu0uut3k")
track_37 = Track.create(title: "Stolen Dance", artist: "Milky Chance", duration: 330, room_id: room_4.id, youtubeid: "iX-QaNzd-0Y")
track_38 = Track.create(title: "Hideaway", artist: "Kiesza", duration: 330, room_id: room_4.id, youtubeid: "ESXgJ9-H-2U")
track_39 = Track.create(title: "Tropical", artist: "Summer mixt by Gio", duration: 320, room_id: room_4.id, youtubeid: "ozrggrnZKqY")
track_40 = Track.create(title: "Amelie Soundtrack ", artist: "Yann Tiersen", duration: 300, room_id: room_4.id, youtubeid: "7wCLK9iOPDw")
puts "Création room 9"
room_9 = Room.new(title: "Party time with Marie", description: "It's friday night girls, this music is going to make you crazy!", custom_message: "Hi my girls ! How are you? I'm going to share some drinks with friends, you come with us? :)", user_id: user_4.id, photo_url: "https://unsplash.com/search/photos/party?photo=--LyFIjXoFY")
puts "save room 9"
room_9.save
puts "création des 10 tracks de la room 9"
track_81 = Track.create(title: "Boys & Girls", artist: "will.i.am", duration: 330, room_id: room_9.id, youtubeid: "2aa6daeNxVI")
track_82 = Track.create(title: "Chantaje", artist: "Shakira", duration: 300, room_id: room_9.id, youtubeid: "6Mgqbai3fKo")
track_83 = Track.create(title: "Cheap Thrills", artist: "Sia", duration: 360, room_id: room_9.id, youtubeid: "nYh-n7EOtMA")
track_84 = Track.create(title: "7/11", artist: "Beyonce", duration: 400, room_id: room_9.id, youtubeid: "k4YRWT_Aldo")
track_85 = Track.create(title: "This Is What You Came For", artist: "Calvin Harris", duration: 350, room_id: room_9.id, youtubeid: "kOkQ4T5WO9E")
track_86 = Track.create(title: "Girls Like ft. Zara Larsson", artist: "Tinie Tempah", duration: 330, room_id: room_9.id, youtubeid: "OEiva3cMv6k")
track_87 = Track.create(title: "Light It Up", artist: "Major Lazer", duration: 320, room_id: room_9.id, youtubeid: "qDcFryDXQ7U")
track_88 = Track.create(title: "Team", artist: "Iggy Azalea", duration: 300, room_id: room_9.id, youtubeid: "dSTRTv0xVlU")
track_89 = Track.create(title: "Bad Girls", artist: "M.I.A.", duration: 200, room_id: room_9.id, youtubeid: "3Yuqxl284cg")
track_90 = Track.create(title: "M.I.L.F. $", artist: "Fergie", duration: 230, room_id: room_9.id, youtubeid: "bsUWK-fixiA")


# Création users non influenceuses
puts "création user 5"
user_5 = User.create!(username: "Elodie", email: "elodie@gmail.com", password: "123456")
puts "création user 6"
user_6 = User.create!(username: "Fabienne", email: "fabienne@gmail.com", password: "123456")
puts "création user 7"
user_7 = User.create!(username: "Roselyne", email: "roselyne@gmail.com", password: "123456")
