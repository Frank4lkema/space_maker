# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Picture.delete_all
Booking.delete_all
Space.delete_all
User.delete_all


users = User.create!([
  {
  email: "frank@gmail.com",
  password: "zonnetje",
  name: "Frank",
  phone_number: "0641394590"
  },
  {
  email: "elad@gmail.com",
  password: "Football",
  name: "elad",
  phone_number: "0631293047"
  }
])

spaces = Space.create!([
  {
    name: "Frank's Basement",
    address: "Oudwijkervelststraat, Utrecht",
    capacity: 5,
    price: 120.50,
    user_id: users[0].id
  },
  {
    name: "Elad's Basement",
    address: "Prins Karelgrach, Amsterdam",
    capacity: 10,
    price: 200.00,
    user_id: users[1].id
  },
  {
    name: "Elad's Shak",
    address: "Prins Karelgrach, Amsterdam",
    capacity: 5,
    price: 150.00,
    user_id: users[1].id
  },
  {
    name: "Rob's Basement",
    address: "Amsterdamsestraatweg, Utrecht",
    capacity: 7,
    price: 100.00,
    user_id: users[0].id
  },
  {
    name: "Rob's Addic",
    address: "Amsterdamsestraatweg, Utrecht",
    capacity: 10,
    price: 200.00,
    user_id: users[1].id
  },
  {
    name: "Frank's Addic",
    address: "Oudwijkervelststraat, Utrecht",
    capacity: 12,
    price: 200.00,
    user_id: users[1].id
  }])

pictures = Picture.create!([
  {
    space: spaces[0],
    remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
  },
  {
    space: spaces[1],
    remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
  },
  {
    space: spaces[2],
    remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
  },
  {
    space: spaces[3],
    remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
  },
  {
    space: spaces[4],
    remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
  },
  {
    space: spaces[5],
    remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
  }

])

