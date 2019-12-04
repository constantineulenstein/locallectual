
User.destroy_all
Locallect.destroy_all
Explorer.destroy_all

10.times do |i|
  user = User.create!(email: Faker::Internet.email,
                      password: "123456",
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      age: rand(18..80),
                      job: Faker::Job.title,
                      gender: Faker::Gender.binary_type,
                      hobby: ['Reading', 'Hiking', 'Fishing', 'Art', 'Theatre', 'Food', 'Animal Watching', 'Live Music', 'Night Life'].to_a.sample,
                      base_location: Faker::Address.city,
                      birth_location: Faker::Address.city)

  gender = user.gender == "Male" ? "men" : "women"
  url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

  user.remote_photo_url = url
  user.save!
end

jeff = User.create(email: "jeff@gmail.com",
                   password: "123456",
                   first_name: "Jeff",
                   last_name: "Yeung",
                   age: 45,
                   job: "Fireman",
                   gender: "Male",
                   hobby: "Swimming",
                   base_location: "Shanghai",
                   birth_location: "Paris",

                   remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012068/nxzy7fjsjght1mowd3t0.jpg"
                   )

elliot = User.create(email: "elliot@gmail.com",
                     password: "123456",
                     first_name: "Elliot",
                     last_name: "Tennison",
                     age: 22,
                     job: "Foot Specialist",
                     gender: "Male",
                     hobby: "Scuba Diving",
                     base_location: "UK",
                     birth_location: "Shanghai",
                     remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012083/btt73tsfl2zdap0mqerq.jpg"
                     )

const = User.create(email: "constantin@gmail.com",
                    password: "123456",
                    first_name: "Constantin",
                    last_name: "Eulenstein",
                    age: 23,
                    job: "Programmer",
                    gender: "Male",
                    hobby: "Hiking",
                    base_location: "Germany",
                    birth_location: "Shanghai",
                    remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575011826/btpnaxpn2tebv1hhznt0.jpg"
                    )

dan = User.create(email: "dan@gmail.com",
                  password: "123456",
                  first_name: "Dan",
                  last_name: "Galim",
                  age: 50,
                  job: "Waiter",
                  gender: "Male",
                  hobby: "Sky Diving",
                  base_location: "United States",
                  birth_location: "Germany",
                  remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012140/f4ezad5dgitnq8h5mg6e.jpg"
                  )

5.times do |i|
   user = User.create!(email: Faker::Internet.email,
                       password: "123456",
                       first_name: Faker::Name.first_name,
                       last_name: Faker::Name.last_name,
                       age: rand(18..80),
                       job: Faker::Job.title,
                       gender: Faker::Gender.binary_type,
                       hobby: ['Reading', 'Hiking', 'Fishing', 'Art', 'Theatre', 'Food', 'Animal Watching', 'Live Music', 'Night Life'].to_a.sample,
                       base_location: "Shanghai",
                       birth_location: Faker::Address.city)

   gender = user.gender == "Male" ? "men" : "women"
   url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

   user.remote_photo_url = url
   user.save!
end

puts "created #{User.count} users"
puts "created #{Locallect.count} locallects"
puts "created #{Explorer.count} explorers"
