# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
 name = Faker::Restaurant.name
 address = Faker::Address.full_address
 category = ["chinese", "italian", "japanese", "french", "belgian"].sample
 phone_number = Faker::Number.leading_zero_number(digits: 10)
 Restaurant.create!(name: name, address: address, category: category, phone_number: phone_number)
end
