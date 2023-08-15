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

User.create!(username: "Gary", address: Faker::Address.full_address, email: "toppiggary@hotmail.com", password: "123")
User.create!(username: "Ritsuki", address: Faker::Address.full_address, email: "ricky0912t@gmail.com", password: "123")
User.create!(username: "James", address: Faker::Address.full_address, email: "hkjl87@hotmail.co.uk", password: "123")
User.create!(username: "Alvin", address: Faker::Address.full_address, email: "ayaualvin@gmail.com", password: "123")

20.times do
  User.create!(username: Faker::Name.name , address: Faker::Address.full_address, email: Faker::Internet.email, password: "123")
end

Apparel.create!(name: "skirt", size: "XL", category: "Business", price: 200 , overview: "a nice skirt")
Apparel.create!(name: "trousers", size: "XL", category: "Business", price: 200 , overview: "a nice trousers")
Apparel.create!(name: "shirt", size: "XL", category: "Business", price: 200 , overview: "a nice shirt")
Apparel.create!(name: "top", size: "XL", category: "Business", price: 200 , overview: "a nice top")
Apparel.create!(name: "bottom", size: "XL", category: "Business", price: 200 , overview: "a nice bottom")

100.times do
  name = ["skirt", "trousers", "shirt", "suit", "dress", "shoes", "top", "bottom"]
  category = ["Business", "Party", "Holiday", "Wedding Guest", "Others"]
  overview = ["Summer", "Winter", "Spring", "Formal", "Wedding"]
  size = %w[XXS XS S M L XL XXL]
  Apparel.create!(name: name.sample , size: size.sample, category: category.sample, price: Random.rand(25..250), overview: "Perfect #{overview.sample} clothing")
end

20.times do
  Rental.create!(user_id: Random.rand(1..24), cloth_id: Random.rand(1..105), start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9), status: "accepted")
end

puts "created #{User.count} users, #{Apparel.count} apparels and #{Rental.count} rentals"
