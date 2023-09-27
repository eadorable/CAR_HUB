# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create
puts 'cleaning database...'
User.destroy_all
Car.destroy_all

puts 'creating users...'
akane = User.create!(email: 'akane@example.com', password: '123456')
steven = User.create!(email: 'steven@example.com', password: '123456')
ardian = User.create!(email: 'ardian@example.com', password: '123456')
erwin = User.create!(email: 'erwin@example.com', password: '123456')

puts 'creating cars...'
Car.create!(brand: 'Ferrari', year: 2021, model: 'F8 Tributo', price: 300000, description: 'Top of the line Ferrari', user: akane)
Car.create!(brand: 'Lamborghini', year: 2021, model: 'Aventador', price: 400000, description: 'Top of the Line Lamborghini', user: steven)
Car.create!(brand: 'Porsche', year: 2021, model: '911 Turbo S', price: 200000, description: 'Top of the line Porsche', user: ardian)
Car.create!(brand: 'Aston Martin', year: 2021, model: 'DBS Superleggera', price: 250000, description: 'Top of the line Aston Martin', user: erwin)
puts 'Finished!'
