# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Locallect.destroy_all
Explorer.destroy_all

10.times do
  user = User.create(email: Faker::Internet.email,
                     password: "123456",
                     first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     age: rand(18..80),
                     job: Faker::Job.title,
                     gender: Faker::Gender.binary_type,
                     karma: rand(1..10),
                     hobby: ['Reading', 'Hiking', 'Fishing', 'Art', 'Theatre', 'Food', 'Animal Watching', 'Live Music', 'Night Life'].to_a.sample,
                     base_location: Faker::Address.city,
                     explorer_location: Faker::Address.city,
                     years_in_city: rand(5..40)
                     )

  Explorer.create(user_id: user.id,
                  count: rand(1..100)
                  )

  Locallect.create(user_id: user.id,
                   count: rand(1..100)
                   )
end

puts "created #{User.count} users"
puts "created #{Locallect.count} locallects"
puts "created #{Explorer.count} explorers"
