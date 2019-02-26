# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  chef = Chef.new(first_name:Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence(3), location: Berlin, rate: Faker::Number.number(2), cuisine: Faker::Restaurant.type)
  chef.save!
end
10.times do
  chef = Chef.new(first_name:Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence(3), location: London, rate: Faker::Number.number(2), cuisine: Faker::Restaurant.type)
  chef.save!
end
10.times do
  chef = Chef.new(first_name:Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence(3), location: Paris, rate: Faker::Number.number(2), cuisine: Faker::Restaurant.type)
  chef.save!
end
