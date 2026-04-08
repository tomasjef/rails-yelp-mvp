# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Golden Dragon", address: "London", phone_number: "020 1234 5678", category: "chinese")
puts "Golden Dragon"

Restaurant.create!(name: "La Trattoria", address: "Italy", phone_number: "020 2345 6789", category: "italian")
puts "La Trattoria"

Restaurant.create!(name: "Sakura Sushi", address: "Tokyo", phone_number: "020 1234 5678", category: "japanese")
puts "Sakura Sushi"

Restaurant.create!(name: "Le Petit Bistro", address: "Paris", phone_number: "020 1234 5678", category: "french")
puts "Le Petit Bistro"

Restaurant.create!(name: "Brussels Corner", address: "Brussels", phone_number: "020 1234 5678", category: "belgian")
puts "Brussels Corner"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
