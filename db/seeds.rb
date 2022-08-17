# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
pizza_hut =  {name: "Pizza Hut", address: "67 Shoreditch High St, London E1 6PQ", category: "italian"}
domino_pizza =  {name: "Domino's Pizza", address: "55 nearby, London E1 6PQ", category: "chinese"}
pizza_awesome =  {name: "awesome Pizza", address: "pas loin, London E1 6PQ", category: "italian"}


[dishoom, pizza_east, pizza_hut, domino_pizza, pizza_awesome].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
