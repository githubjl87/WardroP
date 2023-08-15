# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing DB"

Rental.destroy_all
User.destroy_all
Apparel.destroy_all
Review.destroy_all



puts "creating DB"

gary = User.new(username: "Gary", address: Faker::Address.full_address, email: "toppiggary@hotmail.com", password: "123456")
gary.save!
ritsuki = User.new(username: "Ritsuki", address: Faker::Address.full_address, email: "ricky0912t@gmail.com", password: "123456")
ritsuki.save!
james = User.new(username: "James", address: Faker::Address.full_address, email: "hkjl87@hotmail.co.uk", password: "123456")
james.save!
alvin = User.new(username: "Alvin", address: Faker::Address.full_address, email: "ayaualvin@gmail.com", password: "123456")
alvin.save!

20.times do
  User.create!(username: Faker::Name.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "123456")
end

puts "created #{User.count} users"

skirt = Apparel.new(name: "skirt", user_id: gary.id, size: "XL", category: "Business", price: 200, overview: "a nice skirt")
skirt.save!
trousers = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "XL", category: "Business", price: 200, overview: "a nice trousers")
trousers.save!
shirt = Apparel.new(name: "shirt", user_id: james.id, size: "XL", category: "Business", price: 200, overview: "a nice shirt")
shirt.save!
top = Apparel.new(name: "top", user_id: alvin.id, size: "XL", category: "Business", price: 200, overview: "a nice top")
top.save!
# Apparel.create!(name: "bottom", user_id: 41, size: "XL", category: "Business", price: 200, overview: "a nice bottom")




100.times do
  name = ["skirt", "trousers", "shirt", "suit", "dress", "shoes", "top", "bottom"]
  category = ["Business", "Party", "Holiday", "Wedding Guest", "Others"]
  overview = ["Summer", "Winter", "Spring", "Formal", "Wedding"]
  size = %w[XXS XS S M L XL XXL]
  Apparel.create!(name: name.sample, user_id: [gary.id, ritsuki.id, james.id, alvin.id].sample, size: size.sample, category: category.sample, price: Random.rand(25..250), overview: "Perfect #{overview.sample} clothing")
end

puts "#{Apparel.count} apparels"

Rental.create!(user_id: gary.id, apparel_id: trousers.id, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9), status: "accepted")


5.times do
  Rental.create!(user_id: [gary.id, ritsuki.id, james.id, alvin.id].sample, apparel_id: [trousers.id, shirt.id, skirt.id, top.id].sample, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9), status: "accepted")
end

puts "created #{User.count} users, #{Apparel.count} apparels and #{Rental.count} rentals"
