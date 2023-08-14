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

Apparel.create!()
