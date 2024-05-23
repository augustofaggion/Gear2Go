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

# !First user
# !user1_gear1 = Gear.new(name: "Surfboard", description: "High-performance surfboards for riding the waves, suitable for beginners and experienced surfers alike.", hourly_rate: 15,user_id: user1, photo: "https://images.pexels.com/photos/757133/pexels-photo-757133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
# !user1_gear1.save

# !user1_gear2 = Gear.new(name: "Paddleboards", description: "Stable and sturdy paddleboards for a relaxing day paddling on the water, perfect for all skill levels." , hourly_rate: 10,user_id: user1, photo: "https://images.unsplash.com/photo-1686080186596-f36c43dd0849?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# !user1_gear2.save

# !user1_gear3 = Gear.new(name: "Beach chairs", description: "Comfortable and adjustable beach chairs, ideal for lounging and soaking up the sun.", hourly_rate: 5,user_id: user1, photo: "https://images.unsplash.com/photo-1594067608455-1a33b1294440?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# !user1_gear3.save

# # Second user
# puts "Creating gears for user2"
# !user2_gear1 = Gear.new(name: "Kayaks ", description: "Single and double kayaks for exploring the coastline, offering a fun and engaging water adventure.", hourly_rate: 25, user_id: user2, photo: "https://images.unsplash.com/photo-1617610839501-af0079ef225d?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# !user2_gear1.save

#! user2_gear2 = Gear.new(name: "Snorkel gear", description: "Complete snorkeling sets, including masks, snorkels, and fins, for exploring underwater life.", hourly_rate: 12, user_id: user2, photo: "https://images.pexels.com/photos/8276886/pexels-photo-8276886.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
#! user2_gear2.save

# !user2_gear3 = Gear.new(name: "Beach tents", description: "Easy-to-set-up beach tents for shelter and privacy, great for families and groups.", hourly_rate: 10, user_id: user2, photo: "https://cdn.pixabay.com/photo/2014/07/31/06/50/beach-406051_1280.jpg")
# !user2_gear3.save

# # Third user
# puts "Creating gears for user3"

# !user3_gear1 = Gear.new(name: "Jet skis", description: "High-speed jet skis for an exhilarating ride on the open water, offering a thrilling adventure for adrenaline seekers.", hourly_rate: 60, user_id: user3, photo: "https://images.unsplash.com/photo-1574863226228-0f7ad00fcfe0?q=80&w=2971&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# !user3_gear1.save

#! user3_gear2 = Gear.new(name: "Boats", description: "Well-maintained boats for a day of cruising or fishing, available with or without a captain.", hourly_rate: 100, user_id: user3, photo: "https://images.pexels.com/photos/804981/pexels-photo-804981.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
#! user3_gear2.save

# user3_gear3 = Gear.new(name: "Cooler", description: "Lightweight and fun boogie boards for riding the shore break waves, suitable for all ages.", hourly_rate: 15, user_id: user3, photo: "https://images.unsplash.com/photo-1673909448729-8037ec080cc9?q=80&w=2971&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# user3_gear3.save

puts "Seeds created successfully! :D"
