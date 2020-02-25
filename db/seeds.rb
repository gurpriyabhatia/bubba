# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'

puts 'Cleaning database...'
puts 'destroying groups...'
Group.destroy_all

puts 'Creating groups...'
groups = [
  {
    name: 'The Birdies',
    address: "Sturt St Hoxton, London N1 7QD",
    location: "The Nest boxes",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Birdies.png'
  },
  {
    name: 'The Goaties',
    address: "Graham Street Garden Islington, London",
    location: "The Loafing shed",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Goaties.png'
  },
  {
    name: "The Huskies",
    address: "King Square, London EC1V 8DD",
    location: "The Artic IceHouse",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Huskies.png'
  },
  {
    name: "The Koalas",
    address: "188 New N Rd, Hoxton, London N1 5EP",
    location: "The 3 Trees",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Koalas.png'
  },
  {
    name: "The Lionies",
    address: "50 Pearson St, London E2 8EL",
    location: "The Territory",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Lionies.png'
  },
  {
    name: "The Monkeys",
    address: "32-42 Ravenscroft St, London E2 8LT",
    location: "The Monkey House",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Monkeys.png'
  },
  {
    name: "The Pandas",
    address: "119 Shoreditch High St, Hackney, London E1 6JN",
    location: "Olympic Pandas House",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Pandas.png'
  },
  {
    name: "The Piggies",
    address: "136 Kingsland Rd, London E2 8EA",
    location: "The Glamorous Sty",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Piggies.png'
  },
  {
    name: "The Rabbits",
    address: "5 St Matthew's Row, London E2 6DT",
    location: "The Great Hutch",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Rabbits.png'
  },
  {
    name: "The Rhinoes",
    address: "Vallance Rd, London E2 6HD",
    location: "The Savanna",
    description: "Socialize with friendly Millenials Parents",
    file_name: 'Bubba-Rhinos.png'
  }
]

groups.each do |group|
  new_group = Group.new(
    name: group[:name],
    address: group[:address],
    location: group[:location],
    description: group[:description]
  )
  new_photo = Cloudinary::Uploader.upload(File.join(Rails.root, "/app/assets/images/#{group[:file_name]}").to_s)
  new_group.group_picture.attach(io: URI.open(new_photo['secure_url']), filename: group[:file_name], content_type: 'image/png')
  new_group.save!
end


puts 'Finished!'

puts 'Destroying users...'

User.destroy_all

puts 'Creating users...'
User.create(
  email: "alexia@test.com",
  full_name: "Alexia Tanguy",
  bio: "I'm great",
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'SW6 4JA',
  password: "hellohello")
puts "Alexia created"

User.create(
  email: "rachel@test.com",
  full_name: "Rachel Clarke",
  bio: "I'm great",
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'SW1A 1AA',
  password: "hellohello")
puts "Rachel created"

user_1 = User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'E2 8DY',
  password: "123456")
puts "User created"


user_2 = User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'SW6 4JA',
  password: "123456")
puts "User created"

user_3 = User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'W6 8AZ',
  password: "123456")
puts "User created"

user_4 = User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'N1C 4QL',
  password: "123456")
puts "User created"

user_5 = User.create(
  email: Faker::Internet.email,
  full_name: Faker::Name.name,
  bio: Faker::Quote.most_interesting_man_in_the_world,
  mobile_number: Faker::PhoneNumber.cell_phone,
  address: 'W12 8QE',
  password: "123456")
puts "User created"

puts 'Destroying nannies...'

Nanny.destroy_all

puts 'Creating nannies...'


Nanny.create(
    user_id: user_1.id,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

Nanny.create(
    user_id: user_2.id,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

Nanny.create(
    user_id: user_3.id,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

Nanny.create!(
    user_id: user_4.id,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

Nanny.create!(
    user_id: user_5.id,
    name: Faker::Name.name,
    mobile_number: Faker::PhoneNumber.cell_phone,
    address: 'E2 8DY',
    price_per_hour: Faker::Number.within(range: 5..50),
    bio: Faker::Quote.most_interesting_man_in_the_world,
  )
puts "Nanny created"

puts 'Destroying events...'

Event.destroy_all

puts 'Creating events...'

Event.create!(
  name: "",
  description: "",
  date: "",
  time: "",
  price: ,
  address: "",
  group_id: ,
  total_spaces: ,
  spaces_booked: ,
  )


