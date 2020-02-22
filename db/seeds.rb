# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "alexia@test.com",
  full_name: "Alexia Tanguy",
  bio: "I'm great",
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'SW6 4JA',
  password: "hellohello")
puts "Alexia created"


User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'E2 8DY',
  password: "123456")
puts "User created"


User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'SW6 4JA',
  password: "123456")
puts "User created"

User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'W6 8AZ',
  password: "123456")
puts "User created"

User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'N1C 4QL',
  password: "123456")
puts "User created"

User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'W12 8QE',
  password: "123456")
puts "User created"




Nanny.create(
    user_id: 1,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )

puts "Nanny created"

Nanny.create(
    user_id: 2,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

Nanny.create(
    user_id: 3,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"


Nanny.create!(
    user_id: 4,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

Nanny.create!(
    user_id: 5,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

