# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing DB"

User.destroy_all
Review.destroy_all
Apparel.destroy_all
Rental.destroy_all

puts "creating DB"

User.create!(username: "Gary", address: Faker::Address.full_address, email: "toppiggary@hotmail.com")
User.create!(username: "Ritsuki", address: Faker::Address.full_address, email: "ricky0912t@gmail.com")
User.create!(username: "James", address: Faker::Address.full_address, email: "hkjl87@hotmail.co.uk")
User.create!(username: "Alvin", address: Faker::Address.full_address, email: "ayaualvin@gmail.com")

Apparel.create!(name: "skirt", size: "XL", category: "Business", price: 200 , overview: "a nice skirt")
Apparel.create!(name: "trousers", size: "XL", category: "Business", price: 200 , overview: "a nice trousers")
Apparel.create!(name: "shirt", size: "XL", category: "Business", price: 200 , overview: "a nice shirt")
Apparel.create!(name: "top", size: "XL", category: "Business", price: 200 , overview: "a nice top")
Apparel.create!(name: "bottom", size: "XL", category: "Business", price: 200 , overview: "a nice bottom")

Rental.create!(user_id: 1, cloth_id: 1, start_date: Date.now - 1, end_date: Date.now, status: "accepted")

puts "created #{User.count} users, #{Apparel.count} apparels and #{Rental.count} rentals"
