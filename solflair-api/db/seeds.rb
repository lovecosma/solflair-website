# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# prices = [29.99, 39.99, 49.99]
# lapis = Item.create(name: "lapis", price: prices.sample)
# diamond = Item.create(name: "diamond", price: prices.sample)
# tigers_eye = Item.create(name: "Tiger's Eye", price: prices.sample)
user = User.create(first_name: "Jasmine", last_name: "Alexander", email: "solflair.jewelry@gmail.com", password: "Creampuff1!", password_confirmation: "Creampuff1!", admin: true)
user2 = User.create(first_name: "Red", last_name: "Guy", email: "test@test.com", password: "12345678", password_confirmation: "12345678", admin: false)

