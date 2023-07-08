# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "seeding data..."

User.create(username: "Lizzie", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Angel", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Bobby", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Rosey", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Laura", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Phoebe", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Enock", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "James", password: "pass1234", password_confirmation: "pass1234")
User.create(username: "Lilian", password: "pass1234", password_confirmation: "pass1234")

House.create(location: Faker::Address.full_address, pricing: rand(500..900), name: Faker::Name.name, image:"https://i.postimg.cc/JhXwxbc3/image3.png" )
House.create(location: Faker::Address.full_address, pricing: rand(500..900), name: Faker::Name.name, image:"https://i.postimg.cc/grbLwyDM/image4.png" )
House.create(location: Faker::Address.full_address, pricing: rand(500..900), name: Faker::Name.name, image:"https://i.postimg.cc/VL9Rc4mZ/image5.png" )


Review.create(user_id: rand(1..9), review: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true), house_id: rand(1..4))


puts "Done seeding!"