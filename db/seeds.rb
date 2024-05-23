# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# First user a@wagon.com password: a
puts "Destroying all seeds"
User.destroy_all
Gear.destroy_all

puts "Creating new seeds"

puts "Creating users"
user1 = User.new(email: "a@wagon.com", password: "a", first_name: "Alice", last_name: "Smith", street: "456 Ocean Ave", city: "Miami, USA", phone: "321-654-0987", postcode: "33139", business_name: "Alice's Beachside Rentals")
user1.save

user2 = User.new(email: "b@wagon.com", password: "a", first_name: "Carlos", last_name: "Gonzalez", street: "789 Beach Blvd", city: "Cancun, Mexico", phone: "987-654-3210", postcode: "77500", business_name: "Carlos' Coastal Gear")
user2.save

user3 = User.new(email: "c@wagon.com", password: "a", first_name: "Emma", last_name: "Brown", street: "321 Coastal Road", city: "Gold Coast, Australia", phone: "654-321-7890", postcode: "4217", business_name: "Emma's Surf & Sand Rentals")
user3.save

puts "Creating gears"
puts "Creating gears for user1"

# First user

user1_gear1 = Gear.new(name: "Surfboard", description: "High-performance surfboards for riding the waves, suitable for beginners and experienced surfers alike.", hourly_rate: 15, user_id: user1.id)
file1 = File.open(Rails.root.join('app', 'assets', 'images', 'surfboards.jpeg'))

user1_gear1.photo.attach(io: file1, filename: "surfboards.jpeg", content_type: "image/jpeg")
user1_gear1.save!

user1_gear2 = Gear.new(name: "Paddleboards", description: "Stable and sturdy paddleboards for a relaxing day paddling on the water, perfect for all skill levels." , hourly_rate: 10,user_id: user1.id)
file2 = File.open(Rails.root.join('app', 'assets', 'images', 'paddleboards.avif'))
user1_gear2.photo.attach(io: file2, filename: "paddleboards.avif", content_type: "image/avif")
user1_gear2.save

user1_gear3 = Gear.new(name: "Beach chairs", description: "Comfortable and adjustable beach chairs, ideal for lounging and soaking up the sun.", hourly_rate: 5,user_id: user1.id)
file3 = File.open(Rails.root.join('app', 'assets', 'images', 'beach_chairs.avif'))
user1_gear3.photo.attach(io: file3, filename: "beach_chairs.avif", content_type: "image/avif")
user1_gear3.save

puts "Finishes created user1 gears"

# # Second user
puts "Creating gears for user2"
user2_gear1 = Gear.new(name: "Kayaks ", description: "Single and double kayaks for exploring the coastline, offering a fun and engaging water adventure.", hourly_rate: 25, user_id: user2.id)
file4 = File.open(Rails.root.join('app', 'assets', 'images', 'kayks.avif'))
user2_gear1.photo.attach(io: file4, filename: "kayks.avif", content_type: "image/avif")
user2_gear1.save

user2_gear2 = Gear.new(name: "Snorkel gear", description: "Complete snorkeling sets, including masks, snorkels, and fins, for exploring underwater life.", hourly_rate: 12, user_id: user2.id)
file5 = File.open(Rails.root.join('app', 'assets', 'images', 'snork_gear.jpeg'))
user2_gear2.photo.attach(io: file5, filename: "snork_gear.jpeg", content_type: "image/jpeg")
user2_gear2.save

user2_gear3 = Gear.new(name: "Beach tents", description: "Easy-to-set-up beach tents for shelter and privacy, great for families and groups.", hourly_rate: 10, user_id: user2.id)
file6 = File.open(Rails.root.join('app', 'assets', 'images', 'beach_tents.jpg'))
user2_gear3.photo.attach(io: file6, filename: "beach_tents.jpg", content_type: "image/jpg")
user2_gear3.save

# # Third user
puts "Creating gears for user3"

user3_gear1 = Gear.new(name: "Jet skis", description: "High-speed jet skis for an exhilarating ride on the open water, offering a thrilling adventure for adrenaline seekers.", hourly_rate: 60, user_id: user3.id)
file7 = File.open(Rails.root.join('app', 'assets', 'images', 'jet_ski.avif'))
user3_gear1.photo.attach(io: file7, filename: "jet_ski.avif", content_type: "image/avif")
user3_gear1.save

user3_gear2 = Gear.new(name: "Boats", description: "Well-maintained boats for a day of cruising or fishing, available with or without a captain.", hourly_rate: 100, user_id: user3.id)
file8 = File.open(Rails.root.join('app', 'assets', 'images', 'boat.jpeg'))
user3_gear2.photo.attach(io: file8, filename: "boat.jpeg", content_type: "image/jpeg")
user3_gear2.save

user3_gear3 = Gear.new(name: "Cooler", description: "Lightweight and big cooler for longs trips, so you can have your drinks cold.", hourly_rate: 15, user_id: user3.id)
file9 = File.open(Rails.root.join('app', 'assets', 'images', 'cooler.avif'))
user3_gear3.photo.attach(io: file9, filename: "cooler.avif", content_type: "image/avif")
user3_gear3.save

puts "Seeds created successfully! :D"
