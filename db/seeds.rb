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
# puts "Creating skirts"

# skirt = Apparel.new(name: "skirt", user_id: gary.id, size: "xl", category: "business", price: Random.rand(10..50), overview: "nice skirt")
# file = File.open("db/images/skirt1.jpg")
# skirt.photo.attach(io: file, filename: "skirt1.jpg")
# skirt.save!

# mens trousers
puts "Creating mens trousers"

ritsuki_trousers = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers2.jpg")
ritsuki_trousers.photo.attach(io: file, filename: "men_trousers2.jpg")
ritsuki_trousers.save!

gary_trousers = Apparel.new(name: "trousers", user_id: gary.id, size: "l", category: "casual", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers3.jpg")
gary_trousers.photo.attach(io: file, filename: "men_trousers3.jpg")
gary_trousers.save!

alvin_trousers = Apparel.new(name: "trousers", user_id: alvin.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers4.jpg")
alvin_trousers.photo.attach(io: file, filename: "men_trousers4.jpg")
alvin_trousers.save!

james_trousers = Apparel.new(name: "trousers", user_id: james.id, size: "l", category: "casual", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/men_trousers5.jpg")
james_trousers.photo.attach(io: file, filename: "men_trousers5.jpg")
james_trousers.save!

# womens trousers
puts "Creating womens trousers"

ritsuki_wtrousers = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers1.jpg")
ritsuki_wtrousers.photo.attach(io: file, filename: "women_trousers1.jpg")
ritsuki_wtrousers.save!

gary_wtrousers = Apparel.new(name: "trousers", user_id: gary.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers2.jpg")
gary_wtrousers.photo.attach(io: file, filename: "women_trousers2.jpg")
gary_wtrousers.save!

alvin_wtrousers = Apparel.new(name: "trousers", user_id: alvin.id, size: "l", category: "business", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers3.jpg")
alvin_wtrousers.photo.attach(io: file, filename: "women_trousers3.jpg")
alvin_wtrousers.save!

james_wtrousers = Apparel.new(name: "trousers", user_id: james.id, size: "l", category: "casual", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers4.jpg")
james_wtrousers.photo.attach(io: file, filename: "women_trousers4.jpg")
james_wtrousers.save!

ritsuki_wtrousers2 = Apparel.new(name: "trousers", user_id: ritsuki.id, size: "l", category: "casual", price: Random.rand(10..50), overview: "nice trousers")
file = File.open("db/images/women_trousers5.jpg")
ritsuki_wtrousers2.photo.attach(io: file, filename: "women_trousers5.jpg")
ritsuki_wtrousers2.save!

# men shirts
puts "Creating men shirts"

james_shirt = Apparel.new(name: "shirt", user_id: james.id, size: "m", category: "party", price: Random.rand(10..50), overview: "nice shirt")
file = File.open("db/images/men_shirt1.jpg")
james_shirt.photo.attach(io: file, filename: "men_shirt1.jpg")
james_shirt.save!

alvin_shirt = Apparel.new(name: "shirt", user_id: alvin.id, size: "m", category: "casual", price: Random.rand(10..50), overview: "nice shirt")
file = File.open("db/images/men_shirt2.jpg")
alvin_shirt.photo.attach(io: file, filename: "men_shirt2.jpg")
alvin_shirt.save!

# women shirts
puts "Creating women shirts"

alvin_top = Apparel.new(name: "shirt", user_id: alvin.id, size: "xxl", category: "business", price: Random.rand(10..50), overview: "very nice top")
file = File.open("db/images/women_shirt1.jpg")
alvin_top.photo.attach(io: file, filename: "women_shirt1.jpg")
alvin_top.save!

gary_top = Apparel.new(name: "top", user_id: gary.id, size: "xxl", category: "casual", price: Random.rand(10..50), overview: "very nice top")
file = File.open("db/images/women_shirt2.jpg")
gary_top.photo.attach(io: file, filename: "women_shirt2.jpg")
gary_top.save!

james_top = Apparel.new(name: "top", user_id: james.id, size: "xxl", category: "party", price: Random.rand(10..50), overview: "very nice top")
file = File.open("db/images/women_shirt3.jpg")
james_top.photo.attach(io: file, filename: "women_shirt3.jpg")
james_top.save!

# men suits
puts "Creating men suits"

alvin_suit = Apparel.new(name: "suit", user_id: alvin.id, size: "xs", category: "business", price: Random.rand(10..50), overview: "very nice suit")
file = File.open("db/images/men_suit1.jpg")
alvin_suit.photo.attach(io: file, filename: "men_suit1.jpg")
alvin_suit.save!

ritsuki_suit = Apparel.new(name: "suit", user_id: ritsuki.id, size: "l", category: "wedding", price: Random.rand(10..50), overview: "very nice suit")
file = File.open("db/images/men_suit2.jpg")
ritsuki_suit.photo.attach(io: file, filename: "men_suit2.jpg")
ritsuki_suit.save!

james_suit = Apparel.new(name: "suit", user_id: james.id, size: "s", category: "business", price: Random.rand(10..50), overview: "very nice suit")
file = File.open("db/images/men_suit3.jpg")
james_suit.photo.attach(io: file, filename: "men_suit3.jpg")
james_suit.save!

# women suits
puts "Creating women suits"

alvin_wsuit = Apparel.new(name: "suit", user_id: alvin.id, size: "xs", category: "business", price: Random.rand(10..50), overview: "very nice suit")
file = File.open("db/images/women_suit3.jpg")
alvin_wsuit.photo.attach(io: file, filename: "women_suit3.jpg")
alvin_wsuit.save!

ritsuki_wsuit = Apparel.new(name: "suit", user_id: ritsuki.id, size: "l", category: "wedding", price: Random.rand(10..50), overview: "very nice suit")
file = File.open("db/images/women_suit4.jpg")
ritsuki_wsuit.photo.attach(io: file, filename: "women_suit4.jpg")
ritsuki_wsuit.save!

# Dresses
puts "Creating dresses"

gary_dress = Apparel.new(name: "dress", user_id: gary.id, size: "xs", category: "business", price: Random.rand(10..50), overview: "very nice dress")
file = File.open("db/images/dress1.jpg")
gary_dress.photo.attach(io: file, filename: "dress1.jpg")
gary_dress.save!

james_dress = Apparel.new(name: "dress", user_id: james.id, size: "s", category: "party", price: Random.rand(10..50), overview: "very nice dress")
file = File.open("db/images/dress2.jpg")
james_dress.photo.attach(io: file, filename: "dress2.jpg")
james_dress.save!

ritsuki_dress = Apparel.new(name: "dress", user_id: ritsuki.id, size: "m", category: "wedding", price: Random.rand(10..50), overview: "very nice dress")
file = File.open("db/images/dress3.jpg")
ritsuki_dress.photo.attach(io: file, filename: "dress3.jpg")
ritsuki_dress.save!

gary_dress2 = Apparel.new(name: "dress", user_id: gary.id, size: "m", category: "casual", price: Random.rand(10..50), overview: "very nice dress")
file = File.open("db/images/dress4.jpg")
gary_dress2.photo.attach(io: file, filename: "dress4.jpg")
gary_dress2.save!





# 20.times do
#   name = ["skirt", "trousers", "shirt", "suit", "dress", "shoes", "top", "bottom"]
#   category = ["business", "party", "holiday", "wedding", "casual", "other"]
#   overview = ["summer", "winter", "spring", "formal", "wedding"]
#   size = %w[xxs xs s m l xl xxl]
#   Apparel.create!(name: name.sample, user_id: [gary.id, ritsuki.id, james.id, alvin.id].sample, size: size.sample, category: category.sample, price: Random.rand(25..250), overview: "Perfect #{overview.sample} clothing")
# end

puts "#{Apparel.count} apparels"

Rental.create!(user_id: gary.id, apparel_id: james_trousers.id, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9))
Rental.create!(user_id: ritsuki.id, apparel_id: alvin_shirt.id, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9))
Rental.create!(user_id: james.id, apparel_id: gary_top.id, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9))
Rental.create!(user_id: alvin.id, apparel_id: ritsuki_suit.id, start_date: DateTime.now - Random.rand(10..24), end_date: DateTime.now - Random.rand(1..9))


puts "created #{User.count} users, #{Apparel.count} apparels and #{Rental.count} rentals"
