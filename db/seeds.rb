
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
end

5.times do
   user = User.create(email: Faker::Internet.email,
                      password: "123456",
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      age: rand(18..80),
                      job: Faker::Job.title,
                      gender: Faker::Gender.binary_type,
                      karma: rand(1..10),
                      hobby: ['Reading', 'Hiking', 'Fishing', 'Art', 'Theatre', 'Food', 'Animal Watching', 'Live Music', 'Night Life'].to_a.sample,
                      base_location: "Shanghai",
                      explorer_location: Faker::Address.city,
                      years_in_city: rand(5..40)
                      )
end

puts "created #{User.count} users"
puts "created #{Locallect.count} locallects"
puts "created #{Explorer.count} explorers"
