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

a5_urls = [

  'https://i.ebayimg.com/images/g/fg8AAOSwzkVkixSz/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/hpgAAOSwt41kixS~/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/T7MAAOSw3wlkixS~/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/8hYAAOSw16JkixTF/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/NM8AAOSwqUtkixSy/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/1V4AAOSwtKZkixTD/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/F7wAAOSwcIJkixSy/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/roIAAOSwPYNkixSw/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/nz8AAOSwtqFkixS9/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/m6IAAOSwrQVkixSs/s-l1600.jpg'

  ];

  bmw_series5_urls = [

  'https://i.ebayimg.com/images/g/Sw8AAOSwkMtkqH85/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/DJ8AAOSw7MNlEXa2/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/h-QAAOSwtGFlEXaz/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/PfIAAOSwCJVkqH9D/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/3HsAAOSwoO5kqH9F/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/GcUAAOSw1LFkqH9I/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/PBAAAOSw8S9kqH9K/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/~1AAAOSwHvRlEXa1/s-l1600.jpg'

  ];

  benze_urls = [

  'https://i.ebayimg.com/images/g/GMwAAOSwptVlVfwn/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/oYYAAOSwOyxlVfwq/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/Wy0AAOSwEV9lVfwp/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/JX0AAOSw-phlVfwu/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/Y2AAAOSw5ktlVfwu/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/QUQAAOSwoDFlVfwr/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/1t8AAOSwr~VlVfwq/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/GVUAAOSw2WZlVfwu/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/wZAAAOSwrxBlVfwv/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/yKwAAOSwybdlVfwu/s-l1600.jpg'
  ];

  ford_urls = [

  'https://i.ebayimg.com/images/g/Hg8AAOSwZnllUL3k/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/DzgAAOSwEJVlUL3k/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/zuMAAOSwLNNlUL3l/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/fb8AAOSw4BZlUL3k/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/5oEAAOSwjIdlUL3j/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/3IcAAOSwzatlUL3n/s-l1600.jpg',
  'https://i.ebayimg.com/images/g/JmIAAOSwpkFlUL3k/s-l1600.jpg'
  ];

cars_data = [
  { brand: 'Audi', year: 2021, model: 'A5', price_cents: 300000, description: 'The Audi A5 is a luxury compact car that is known for its sleek design, advanced technology, and performance.', img_url: a5_urls },
  { brand: 'BMW', year: 2011, model: ' 5 Series', price_cents: 400000, description: 'The BMW 5 Series is a luxury midsize sedan known for its combination of performance, comfort, and advanced technology. The 2021 model typically offered a range of engine options, including turbocharged four-cylinder and six-cylinder engines, as well as a plug-in hybrid variant.', img_url: bmw_series5_urls },
  { brand: 'Mercedes', year: 2008, model: 'Benz E', price_cents: 200000, description: '
  The 2009 Mercedes-Benz E-Class is part of the W211 generation and represents a midsize luxury sedan that is known for its sophisticated design, advanced technology, and comfort. ', img_url: benze_urls },
  { brand: 'Ford', year: 2019, model: 'Fiesta', price_cents: 250000, description: 'The 2009 Ford Fiesta is a subcompact car that is known for its fuel efficiency, compact size, and practicality.', img_url: ford_urls }
];


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
