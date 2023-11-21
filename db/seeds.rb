# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create
# roolback to previous state(10/2023)
puts 'cleaning database...'
User.destroy_all
Car.destroy_all

puts 'creating users...'
# Create an array of hashes containing the user data we want to seed
users_data = [
  { email: 'akane@example.com', password: '123456' },
  { email: 'steven@example.com', password: '123456' },
  { email: 'ardian@example.com', password: '123456' },
  { email: 'erwin@example.com', password: '123456' }
]

# Create an empty array to store the users
users = []

# Create users based on the users_data array
users_data.each do |user_data|
  users << User.create!(user_data)
end

puts 'creating cars...'
# Create an array of hashes containing the cars data we want to seed
cars_data = [
  { brand: 'Ferrari', year: 2021, model: 'F8 Tributo', price_cents: 300000, description: 'Top of the line Ferrari' },
  { brand: 'Lamborghini', year: 2021, model: 'Aventador', price_cents: 400000, description: 'Top of the Line Lamborghini' },
  { brand: 'Porsche', year: 2021, model: '911 Turbo S', price_cents: 200000, description: 'Top of the line Porsche' },
  { brand: 'Aston Martin', year: 2021, model: 'DBS Superleggera', price_cents: 250000, description: 'Top of the line Aston Martin' }
]

# Create an empty array to store the cars
cars = []

# Create cars based on the cars_data array and associate them with the users
users.each_with_index do |user, index|
  car_data = cars_data[index]
  car = user.cars.build(car_data)
  car.save!
  cars << car
end

puts 'Finished!'
