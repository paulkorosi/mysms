# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..1000
  Student.create(title: Faker::Name.prefix, first_name: Faker::Name.first_name, middle_name: Faker::Name.middle_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, birth_date: Faker::Date.birthday(min_age: 18, max_age: 65), gender: Faker::Gender.binary_type[0].downcase)
end
