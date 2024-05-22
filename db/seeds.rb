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
User.destroy_all
Gear.destroy_all
user_account1 = User.new(email: "a@wagon.com", password: "a", first_name: "John", last_name: "Doe", street: "123 Main St", city: "Malaga, Spain", phone: "123-456-7890", postcode: "33101", business_name: "John's Gear")
user_account1.save
user_gear1 = Gear.new(name: "Surfboard", description: "A surfboard", hourly_rate: 10, user_id: 1)
user_gear1.save

user_gear2 = Gear.new(name: "Jetski", description: "Jetski for who like adventure", hourly_rate: 50, user_id: 1)
user_gear2.save

user_gear3 = Gear.new(name: "Beach umbrella", description: "Good for big families", hourly_rate: 5, user_id: 1)
user_gear3.save

# Second user
user_account2 = User.new(email: "b@wagon.com", password: "b", first_name: "Jane", last_name: "Dindon", street: "456 Main St", city: "Miami, USA", phone: "123-456-7890", postcode: "33101", business_name: "Surfin' Gears rental")
user_account2.save

user2_gear1 = Gear.new(name: "Boat", description: "A Boat", hourly_rate: 100, user_id: 2)
user2_gear1.save

user2_gear2 = Gear.new(name: "Windboard", description: "Windboard for who like adventure", hourly_rate: 50, user_id: 2)
user2_gear2.save

user2_gear3 = Gear.new(name: "Beach umbrella", description: "Good for big families", hourly_rate: 5, user_id: 2)
user2_gear3.save

# Third user
user_account3 = User.new(email: "c@wagon.com", password: "c", first_name: "Jack", last_name: "Joe", street: "789 Main St", city: "Recife, Brazil", phone: "123-456-7890", postcode: "33101", business_name: "Jack's & Boats")
user_account3.save

user3_gear1 = Gear.new(name: "Submarine", description: "A Submarine", hourly_rate: 500, user_id: 3)
user3_gear1.save

user3_gear2 = Gear.new(name: "Jetski", description: "Jetski for who like adventure", hourly_rate: 50, user_id: 3)
user3_gear2.save

user3_gear3 = Gear.new(name: "Beach umbrella", description: "Good for big families", hourly_rate: 5, user_id: 3)
user3_gear3.save

puts "Seeds created"
