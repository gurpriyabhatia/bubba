# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'
puts "Let's clean this database..."
puts 'Destroying users...'
User.destroy_all
puts 'Destroying events...'
Event.destroy_all
puts 'destroying groups...'
Group.destroy_all
puts 'Destroying nannies and bookings...'
Nanny.destroy_all
NannyBooking.destroy_all

puts "Create *The* Bubba Team"
  puts "Ladies first..."
    User.create(
      email: "alexia@test.com",
      full_name: "Alexia Tanguy",
      bio: "I'm great",
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '138 Kingsland Rd, London E2 8DY',
      password: "hellohello")
    puts "Alexia created"

    User.create(
      email: "rachel@test.com",
      full_name: "Rachel Clarke",
      bio: "I'm great",
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '138 Kingsland Rd, London E2 8DY',
      password: "hellohello")
    puts "Rachel created"

    User.create(
      email: "gurpriyal@test.com",
      full_name: "Gurpriya Bhatia",
      bio: "I'm great",
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '138 Kingsland Rd, London E2 8DY',
      password: "hellohello")
    puts "Gurpriya created"

  puts "Then..."
    User.create(
      email: "fix@test.com",
      full_name: "Fix Baud",
      bio: "I'm great",
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '138 Kingsland Rd, London E2 8DY',
      password: "hellohello")
    puts "Fix created"

puts 'Creating users...'
    user_1 = User.new(
      email: Faker::Internet.email,
      full_name: Faker::Name.name,
      bio: Faker::Quote.most_interesting_man_in_the_world,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'E2 8DY',
      password: "123456")
      user_1.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-9_ajhycb.png'), filename: 'nes.png', content_type: 'image/png')
      user_1.save!
    puts "User created"


    user_2 = User.new(
      email: Faker::Internet.email,
      full_name: Faker::Name.name,
      bio: Faker::Quote.most_interesting_man_in_the_world,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'SW6 4JA',
      password: "123456")
      user_2.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-4_jsomwf.png'), filename: 'nes.png', content_type: 'image/png')
      user_2.save!
    puts "User created"

    user_3 = User.new(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        bio: Faker::Quote.most_interesting_man_in_the_world,
        mobile_number: Faker::PhoneNumber.cell_phone,
        address: 'W6 8AZ',
        password: "123456")
        user_3.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-7_paahxr.png'), filename: 'nes.png', content_type: 'image/png')
        user_3.save!
    puts "User created"

    user_4 = User.new(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        bio: Faker::Quote.most_interesting_man_in_the_world,
        mobile_number: Faker::PhoneNumber.cell_phone,
        address: 'N1C 4QL',
        password: "123456")
        user_4.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-1_v2wk46.png'), filename: 'nes.png', content_type: 'image/png')
        user_4.save!
    puts "User created"

    user_5 = User.new(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        bio: Faker::Quote.most_interesting_man_in_the_world,
        mobile_number: Faker::PhoneNumber.cell_phone,
        address: 'W12 8QE',
        password: "123456")
      user_5.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-6_bx1e0w.png'), filename: 'nes.png', content_type: 'image/png')
      user_5.save!
    puts "User created"

    user_6 = User.new(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        bio: Faker::Quote.most_interesting_man_in_the_world,
        mobile_number: Faker::PhoneNumber.cell_phone,
        address: 'W12 8QE',
        password: "123456")
      user_6.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-3_v9hvfb.png'), filename: 'nes.png', content_type: 'image/png')
      user_6.save!
    puts "User created"

    user_7 = User.new(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        bio: Faker::Quote.most_interesting_man_in_the_world,
        mobile_number: Faker::PhoneNumber.cell_phone,
        address: 'W12 8QE',
        password: "123456")
      user_7.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-2_gcgdiy.png'), filename: 'nes.png', content_type: 'image/png')
      user_7.save!
    puts "User created"


    user_8 = User.new(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        bio: Faker::Quote.most_interesting_man_in_the_world,
        mobile_number: Faker::PhoneNumber.cell_phone,
        address: 'W12 8QE',
        password: "123456")
      user_8.photo.attach(io: URI.open('https://res.cloudinary.com/dolzriuzv/image/upload/v1583441822/User-5_rcvrjt.png'), filename: 'nes.png', content_type: 'image/png')
      user_8.save!
    puts "User created"


puts 'Then we have to create nannies...'
  Nanny.create(
      user_id: user_1.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'Sturt St Hoxton, London N1 7QD',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create(
      user_id: user_2.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '7 Regan Way, Hoxton, London N1 6PH',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create(
      user_id: user_3.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'Yorkton St, London E2 8N',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create!(
      user_id: user_4.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'Graham Street Garden Islington, London',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create!(
      user_id: user_5.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'Kingsland Street, London E2 8DY',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create!(
      user_id: user_6.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: 'King Square, London EC1V 8DD',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create!(
      user_id: user_7.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '188 New N Rd, Hoxton, London N1 5EP',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

  Nanny.create!(
      user_id: user_8.id,
      name: Faker::Name.name,
      mobile_number: Faker::PhoneNumber.cell_phone,
      address: '50 Pearson St, London E2 8EL',
      price_per_hour: Faker::Number.within(range: 5..50),
      bio: Faker::Quote.most_interesting_man_in_the_world,
    )
  puts "Nanny created"

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
puts 'Groups: Finished!'

puts 'Creating events...'
  Event.create!(
    name: "Family Picnic",
    description: "A picnic for all the family, bring food!",
    date: "28/03/2020",
    time: "28/03/2020, 12:00",
    address: "Haggerston Park, Yorkton St, London E2 8NH",
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Playgroup",
    description: "Bring your little ones along to the weekly playgroup.",
    date: "04/04/2020",
    time: "04/04/2020, 10:00",
    address: "Regan Way Community Hall, 7 Regan Way, Hoxton, London N1 6PH",
    price: 5,
    total_spaces: 30,
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Toddler Ballet",
    description: "A one off dance class for your little ones.",
    date: "05/04/2020",
    time: "05/04/2020, 10:00",
    address: "Regan Way Community Hall, 7 Regan Way, Hoxton, London N1 6PH",
    price: 12,
    total_spaces: 20,
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Beers for Dads",
    description: "Our monthly meet-up for the local dads out there who need some family-free time 😅",
    date: "10/04/2020",
    time: "10/04/2020, 20:00",
    address: "Hoxton Brewhouse, 397-400 Geffrye St, London E2 8HZ",
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Beers for Mums",
    description: "Our monthly meet-up for the local mums out there who need some family-free time 😅",
    date: "11/04/2020",
    time: "11/04/2020, 20:00",
    address: "Hoxton Brewhouse, 397-400 Geffrye St, London E2 8HZ",
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Playgroup",
    description: "Bring your little ones along to the weekly playgroup.",
    date: "11/04/2020",
    time: "11/04/2020, 10:00",
    address: "Regan Way Community Hall, 7 Regan Way, Hoxton, London N1 6PH",
    price: 5,
    total_spaces: 30,
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Playgroup",
    description: "Bring your little ones along to the weekly playgroup.",
    date: "18/04/2020",
    time: "18/04/2020, 10:00",
    address: "Regan Way Community Hall, 7 Regan Way, Hoxton, London N1 6PH",
    price: 5,
    total_spaces: 30,
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Treasure Hunt",
    description: "Take part in our treasure hunt event! All proceeds go to charity 😇",
    date: "19/04/2020",
    time: "19/04/2020, 10:00",
    address: "Haggerston Park, Yorkton St, London E2 8NH",
    price: 5,
    total_spaces: 20,
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Parent Toddler Yoga",
    description: "Unwind in this one off yoga session. Limited spaces!",
    date: "21/04/2020",
    time: "21/04/2020, 10:00",
    address: "Regan Way Community Hall, 7 Regan Way, Hoxton, London N1 6PH",
    price: 10,
    total_spaces: 10,
    group_id: Group.first.id,
    )

  Event.create!(
    name: "Bank Holiday Picnic",
    description: "Join us for a picnic this bank holiday. Open to everyone!",
    date: "08/05/2020",
    time: "08/05/2020, 10:00",
    address: "Haggerston Park, Yorkton St, London E2 8NH",
    group_id: Group.first.id,
    )
  puts 'Events created!'
  puts "Database is now ready to use! Enjoy"







