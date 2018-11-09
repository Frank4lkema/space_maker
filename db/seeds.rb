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


# users = User.create!([
#   {
#   email: "frank@gmail.com",
#   password: "zonnetje",
#   name: "Frank",
#   phone_number: "0641394590"
#   },
#   {
#   email: "elad@gmail.com",
#   password: "Football",
#   name: "elad",
#   phone_number: "0631293047"
#   }
# ])

# spaces = Space.create!([
#   {
#     name: "Frank's Basement",
#     address: "Oudwijkervelststraat 97, Utrecht",
#     capacity: 5,
#     price: 120.50,
#     user_id: users[0].id
#   },
#   {
#     name: "Elad's Basement",
#     address: "Amsteldijk 13, Amsterdam",
#     capacity: 10,
#     price: 200.00,
#     user_id: users[1].id
#   },
#   {
#     name: "Elad's Shak",
#     address: "Amsteldijk 17, Amsterdam",
#     capacity: 5,
#     price: 150.00,
#     user_id: users[1].id
#   },
#   {
#     name: "Rob's Basement",
#     address: "Amsterdamsestraatweg 80, Utrecht",
#     capacity: 7,
#     price: 100.00,
#     user_id: users[0].id
#   },
#   {
#     name: "Rob's Addic",
#     address: "Amsterdamsestraatweg 101, Utrecht",
#     capacity: 10,
#     price: 200.00,
#     user_id: users[1].id
#   },
#   {
#     name: "Frank's Addic",
#     address: "Oudwijkervelststraat 79, Utrecht",
#     capacity: 12,
#     price: 200.00,
#     user_id: users[1].id
#   }])

# pictures = Picture.create!([
#   {
#     space: spaces[0],
#     remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
#   },
#   {
#     space: spaces[1],
#     remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
#   },
#   {
#     space: spaces[2],
#     remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
#   },
#   {
#     space: spaces[3],
#     remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
#   },
#   {
#     space: spaces[4],
#     remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
#   },
#   {
#     space: spaces[5],
#     remote_photo_url: "https://res.cloudinary.com/ddpeg9u5v/image/upload/v1541594766/boutdpez7w7dmbptdz2x.jpg"
#   }

# ])

