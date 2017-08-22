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
