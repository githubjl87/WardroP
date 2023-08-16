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

gary = User.new(username: "gary", address: "507-12 Uchikanna, Chita gun taketoyo cho, Aichi ken", email: "toppiggary@hotmail.com", password: "123456")
gary.save!
ritsuki = User.new(username: "ritsuki", address: "58-18 Katsumotocho nakafure, Iki shi, Nagasaki ken", email: "ricky0912t@gmail.com", password: "123456")
ritsuki.save!
james = User.new(username: "james", address: "12-13 Ogawa, Tone gun minakami machi, Gumma ken", email: "hkjl87@hotmail.co.uk", password: "123456")
james.save!
alvin = User.new(username: "alvin", address: "356-3 Muyacho kizu, Naruto shi, Tokushima ken", email: "ayaualvin@gmail.com", password: "123456")
alvin.save!

5.times do
  User.create!(username: Faker::Name.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "123456")
end

puts "created #{User.count} users"

# skirts
puts "Creating skirts"

skirt = Apparel.new(name: "skirt", user_id: gary.id, size: "xl", category: "business", price: Random.rand(10..50), overview: "nice skirt")
file = File.open("db/images/skirt1.jpg")
skirt.photo.attach(io: file, filename: "skirt1.jpg")
skirt.save!

# mens trousers
puts "Creating mens trousers"

trousers = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers2.jpg")
trousers.photo.attach(io: file, filename: "men_trousers2.jpg")
trousers.save!

trousers2 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers3.jpg")
trousers2.photo.attach(io: file, filename: "men_trousers3.jpg")
trousers2.save!

trousers3 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers4.jpg")
trousers3.photo.attach(io: file, filename: "men_trousers4.jpg")
trousers3.save!

trousers4 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers5.jpg")
trousers4.photo.attach(io: file, filename: "men_trousers5.jpg")
trousers4.save!

# womens trousers
puts "Creating womens trousers"

wtrousers = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers1.jpg")
wtrousers.photo.attach(io: file, filename: "women_trousers1.jpg")
wtrousers.save!

wtrousers2 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers2.jpg")
wtrousers2.photo.attach(io: file, filename: "women_trousers2.jpg")
wtrousers2.save!

wtrousers3 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers3.jpg")
wtrousers3.photo.attach(io: file, filename: "women_trousers3.jpg")
wtrousers3.save!

wtrousers4 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers4.jpg")
wtrousers4.photo.attach(io: file, filename: "women_trousers4.jpg")
wtrousers4.save!

wtrousers5 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers5.jpg")
wtrousers5.photo.attach(io: file, filename: "women_trousers5.jpg")
wtrousers5.save!

# men shirts
puts "Creating men shirts"

shirt = Apparel.new(name: "shirt", user_id: james.id, size: "m", category: "business", price: Random.rand(10..50), overview: "nice shirt")
file = File.open("db/images/men_shirt1.jpg")
shirt.photo.attach(io: file, filename: "men_shirt1.jpg")
shirt.save!

shirt2 = Apparel.new(name: "shirt", user_id: james.id, size: "m", category: "casual", price: Random.rand(10..50), overview: "nice shirt")
file = File.open("db/images/men_shirt2.jpg")
shirt2.photo.attach(io: file, filename: "men_shirt2.jpg")
shirt2.save!

# women shirts
puts "Creating women shirts"

top = Apparel.new(name: "shirt", user_id: alvin.id, size: "xxl", category: "business", price: Random.rand(10..50), overview: "nice top")
file = File.open("db/images/women_shirt1.jpg")
top.photo.attach(io: file, filename: "women_shirt1.jpg")
top.save!

top2 = Apparel.new(name: "top", user_id: alvin.id, size: "xxl", category: "casual", price: Random.rand(10..50), overview: "nice top")
file = File.open("db/images/women_shirt2.jpg")
top2.photo.attach(io: file, filename: "women_shirt2.jpg")
top2.save!

top3 = Apparel.new(name: "top", user_id: alvin.id, size: "xxl", category: "party", price: Random.rand(10..50), overview: "nice top")
file = File.open("db/images/women_shirt3.jpg")
top3.photo.attach(io: file, filename: "women_shirt3.jpg")
top3.save!

# men suits
puts "Creating men suits"

suit = Apparel.new(name: "suit", user_id: alvin.id, size: "xs", category: "business", price: Random.rand(10..50), overview: "nice suit")
file = File.open("db/images/men_suit1.jpg")
suit.photo.attach(io: file, filename: "men_suit1.jpg")
suit.save!

suit2 = Apparel.new(name: "suit", user_id: ritsuki.id, size: "l", category: "wedding", price: Random.rand(10..50), overview: "nice suit")
file = File.open("db/images/men_suit2.jpg")
suit2.photo.attach(io: file, filename: "men_suit2.jpg")
suit2.save!

suit3 = Apparel.new(name: "suit", user_id: james.id, size: "s", category: "business", price: Random.rand(10..50), overview: "nice suit")
file = File.open("db/images/men_suit3.jpg")
suit3.photo.attach(io: file, filename: "men_suit3.jpg")
suit3.save!

# women suits
puts "Creating women suits"

wsuit = Apparel.new(name: "suit", user_id: alvin.id, size: "xs", category: "business", price: Random.rand(10..50), overview: "nice suit")
file = File.open("db/images/women_suit3.jpg")
wsuit.photo.attach(io: file, filename: "women_suit3.jpg")
wsuit.save!

wsuit2 = Apparel.new(name: "suit", user_id: ritsuki.id, size: "l", category: "wedding", price: Random.rand(10..50), overview: "nice suit")
file = File.open("db/images/women_suit4.jpg")
wsuit2.photo.attach(io: file, filename: "women_suit4.jpg")
wsuit2.save!

# Dresses
puts "Creating dresses"

dress = Apparel.new(name: "dress", user_id: alvin.id, size: "xs", category: "business", price: Random.rand(10..50), overview: "nice dress")
file = File.open("db/images/dress1.jpg")
dress.photo.attach(io: file, filename: "dress1.jpg")
dress.save!

dress2 = Apparel.new(name: "dress", user_id: james.id, size: "s", category: "party", price: Random.rand(10..50), overview: "nice dress")
file = File.open("db/images/dress2.jpg")
dress2.photo.attach(io: file, filename: "dress2.jpg")
dress2.save!

dress3 = Apparel.new(name: "dress", user_id: ritsuki.id, size: "m", category: "wedding", price: Random.rand(10..50), overview: "nice dress")
file = File.open("db/images/dress3.jpg")
dress3.photo.attach(io: file, filename: "dress3.jpg")
dress3.save!

dress4 = Apparel.new(name: "dress", user_id: gary.id, size: "m", category: "casual", price: Random.rand(10..50), overview: "nice dress")
file = File.open("db/images/dress4.jpg")
dress4.photo.attach(io: file, filename: "dress4.jpg")
dress4.save!





20.times do
  name = ["skirt", "trousers", "shirt", "suit", "dress", "shoes", "top", "bottom"]
  category = ["business", "party", "holiday", "wedding", "casual", "other"]
  overview = ["summer", "winter", "spring", "formal", "wedding"]
  size = %w[xxs xs s m l xl xxl]
  Apparel.create!(name: name.sample, user_id: [gary.id, ritsuki.id, james.id, alvin.id].sample, size: size.sample, category: category.sample, price: Random.rand(25..250), overview: "Perfect #{overview.sample} clothing")
end

puts "#{Apparel.count} apparels"

Rental.create!(user_id: gary.id, apparel_id: trousers.id, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9), status: "accepted")

5.times do
  Rental.create!(user_id: [gary.id, ritsuki.id, james.id, alvin.id].sample, apparel_id: [trousers.id, shirt.id, skirt.id, top.id].sample, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9), status: "accepted")
end

puts "created #{User.count} users, #{Apparel.count} apparels and #{Rental.count} rentals"
