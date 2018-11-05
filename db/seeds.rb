# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.new([
  {
  email: "frank@gmail.com"
  password: "zonnetje"
  name: "Frank"
  phone_number: "0641394590"
  },
  {
  email: "elad@gmail.com"
  password: "Football"
  name: "elad"
  phone_number: "0631293047"
  },
  {
  email: "Rob@gmail.com"
  password: "Weed"
  name: "Rob"
  phone_number: "0632345609"
  },
])

spaces =Space.create([
  {
    name: "Frank's Basement"
    address: "Oudwijkervelststraat, Utrecht"
    capacity: 5
    price: 120.50
    user_id: 1
  },
  {
    name: "Elad's Basement"
    address: "Prins Karelgrach, Amsterdam"
    capacity: 10
    price: 200.00
    user_id: 2
  },
  {
    name: "Elad's Shak"
    address: "Prins Karelgrach, Amsterdam"
    capacity: 5
    price: 150.00
    user_id: 2
  },
  {
    name: "Rob's Basement"
    address: "Amsterdamsestraatweg, Utrecht"
    capacity: 7
    price: 100.00
    user_id: 3
  },
  {
    name: "Rob's Addic"
    address: "Amsterdamsestraatweg, Utrecht"
    capacity: 10
    price: 200.00
    user_id: 3
  },
  {
    name: "Frank's Addic"
    address: "Oudwijkervelststraat, Utrecht"
    capacity: 12
    price: 200.00
    user_id: 1
  }])
