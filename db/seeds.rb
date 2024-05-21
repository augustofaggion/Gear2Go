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
user_gear1 = Gear.new(name: "Surfboard", description: "A surfboard", hourly_rate: 10, user_id: 1)
user_gear1.save

user_gear2 = Gear.new(name: "Jetski", description: "Jetski for who like adventure", hourly_rate: 50, user_id: 1)
user_gear2.save

user_gear3 = Gear.new(name: "Beach umbrella", description: "Good for big families", hourly_rate: 5, user_id: 1)
user_gear3.save

# Second user
user_account2 = User.new(email: "b@wagon.com", password: "b")
user_account2.save

user2_gear1 = Gear.new(name: "Boat", description: "A Boat", hourly_rate: 100, user_id: 1)
user2_gear1.save

user2_gear2 = Gear.new(name: "Windboard", description: "Windboard for who like adventure", hourly_rate: 50, user_id: 1)
user2_gear2.save

user2_gear3 = Gear.new(name: "Beach umbrella", description: "Good for big families", hourly_rate: 5, user_id: 1)
user2_gear3.save

# Third user
user_account3 = User.new(email: "c@wagon.com", password: "c")
user_account3.save

user3_gear1 = Gear.new(name: "Submarine", description: "A Submarine", hourly_rate: 500, user_id: 1)
user3_gear1.save

user3_gear2 = Gear.new(name: "Jetski", description: "Jetski for who like adventure", hourly_rate: 50, user_id: 1)
user3_gear2.save

user3_gear3 = Gear.new(name: "Beach umbrella", description: "Good for big families", hourly_rate: 5, user_id: 1)
user3_gear3.save
