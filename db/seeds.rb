
User.destroy_all
Locallect.destroy_all
Explorer.destroy_all
Forum.destroy_all
Comment.destroy_all

languages = ['Abkhaz',
             'Afar',
             'Afrikaans',
             'Akan',
             'Albanian',
             'Amharic',
             'Arabic',
             'Aragonese',
             'Armenian',
             'Assamese',
             'Avaric',
             'Avestan',
             'Aymara',
             'Azerbaijani',
             'Bambara',
             'Bashkir',
             'Basque',
             'Belarusian',
             'Bengali',
             'Bihari',
             'Bislama',
             'Bosnian',
             'Breton',
             'Bulgarian',
             'Burmese',
             'Catalan; Valencian',
             'Chamorro',
             'Chechen',
             'Chichewa; Chewa; Nyanja',
             'Chinese',
             'Chuvash',
             'Cornish',
             'Corsican',
             'Cree',
             'Croatian',
             'Czech',
             'Danish',
             'Divehi; Dhivehi; Maldivian;',
             'Dutch',
             'English',
             'Esperanto',
             'Estonian',
             'Ewe',
             'Faroese',
             'Fijian',
             'Finnish',
             'French',
             'Fula; Fulah; Pulaar; Pular',
             'Galician',
             'Georgian',
             'German',
             'Greek, Modern',
             'Guaraní',
             'Gujarati',
             'Haitian; Haitian Creole',
             'Hausa',
             'Hebrew (modern)',
             'Herero',
             'Hindi',
             'Hiri Motu',
             'Hungarian',
             'Interlingua',
             'Indonesian',
             'Interlingue',
             'Irish',
             'Igbo',
             'Inupiaq',
             'Ido',
             'Icelandic',
             'Italian',
             'Inuktitut',
             'Japanese',
             'Javanese',
             'Kalaallisut, Greenlandic',
             'Kannada',
             'Kanuri',
             'Kashmiri',
             'Kazakh',
             'Khmer',
             'Kikuyu, Gikuyu',
             'Kinyarwanda',
             'Kirghiz, Kyrgyz',
             'Komi',
             'Kongo',
             'Korean',
             'Kurdish',
             'Kwanyama, Kuanyama',
             'Latin',
             'Luxembourgish, Letzeburgesch',
             'Luganda',
             'Limburgish, Limburgan, Limburger',
             'Lingala',
             'Lao',
             'Lithuanian',
             'Luba-Katanga',
             'Latvian',
             'Manx',
             'Macedonian',
             'Malagasy',
             'Malay',
             'Malayalam',
             'Maltese',
             'Māori',
             'Marathi (Marāṭhī)',
             'Marshallese',
             'Mongolian',
             'Nauru',
             'Navajo, Navaho',
             'Norwegian Bokmål',
             'North Ndebele',
             'Nepali',
             'Ndonga',
             'Norwegian Nynorsk',
             'Norwegian',
             'Nuosu',
             'South Ndebele',
             'Occitan',
             'Ojibwe, Ojibwa',
             'Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic',
             'Oromo',
             'Oriya',
             'Ossetian, Ossetic',
             'Panjabi, Punjabi',
             'Pāli',
             'Persian',
             'Polish',
             'Pashto, Pushto',
             'Portuguese',
             'Quechua',
             'Romansh',
             'Kirundi',
             'Romanian, Moldavian, Moldovan',
             'Russian',
             'Sanskrit (Saṁskṛta)',
             'Sardinian',
             'Sindhi',
             'Northern Sami',
             'Samoan',
             'Sango',
             'Serbian',
             'Scottish Gaelic; Gaelic',
             'Shona',
             'Sinhala, Sinhalese',
             'Slovak',
             'Slovene',
             'Somali',
             'Southern Sotho',
             'Spanish; Castilian',
             'Sundanese',
             'Swahili',
             'Swati',
             'Swedish',
             'Tamil',
             'Telugu',
             'Tajik',
             'Thai',
             'Tigrinya',
             'Tibetan Standard, Tibetan, Central',
             'Turkmen',
             'Tagalog',
             'Tswana',
             'Tonga (Tonga Islands)',
             'Turkish',
             'Tsonga',
             'Tatar',
             'Twi',
             'Tahitian',
             'Uighur, Uyghur',
             'Ukrainian',
             'Urdu',
             'Uzbek',
             'Venda',
             'Vietnamese',
             'Volapük',
             'Walloon',
             'Welsh',
             'Wolof',
             'Western Frisian',
             'Xhosa',
             'Yiddish',
             'Yoruba',
             'Zhuang, Chuang']

hobbies = ['Reading',
           'Watching TV',
           'Family Time',
           'Going to Movies',
           'Fishing',
           'Computers',
           'Gardening',
           'Walking',
           'Exercise',
           'Music',
           'Night Entertainment',
           'Hunting',
           'Team Sports',
           'Shopping',
           'Traveling',
           'Sleeping',
           'Socializing',
           'Sweing',
           'Golf',
           'Relaxing',
           'Housework',
           'Crafts',
           'Watching Sports',
           'Bicycling',
           'Playing Cards',
           'Hiking',
           'Cooking',
           'Swimming',
           'Camping',
           'Skiing',
           'Working on Cars',
           'Writing',
           'Boating',
           'Animal Care',
           'Bowling',
           'Painting',
           'Running',
           'Dancing',
           'Horseback Riding',
           'Tennis',
           'Theater',
           'Billards',
           'Beach',
           'Teaching',
           'Volunteer Work']




5.times do |i|

  user = User.create!(email: Faker::Internet.email,
                      password: "123456",
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      birthday: Faker::Date.birthday,
                      job: Faker::Job.title,
                      gender: Faker::Gender.binary_type,
                      hobby_list: hobbies.sample,
                      base_location: "Shanghai",
                      language_list: languages.sample,
                      birth_location: Faker::Address.city)

  gender = user.gender == "Male" ? "men" : "women"
  url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

  user.remote_photo_url = url
  user.save!

  2.times do
    forum = Forum.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, user_id: user.id, location: "Shanghai", language_list: "English")
    Comment.create(description: Faker::Hipster.paragraph, forum_id: forum.id, user_id: user.id)
  end
end

5.times do |i|
  user = User.create!(email: Faker::Internet.email,
                      password: "123456",
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      birthday: Faker::Date.birthday,
                      job: Faker::Job.title,
                      gender: Faker::Gender.binary_type,
                      hobby_list: hobbies.sample,
                      base_location: "Munich",
                      language_list: languages.sample,
                      birth_location: Faker::Address.city)

  gender = user.gender == "Male" ? "men" : "women"
  url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

  user.remote_photo_url = url
  user.save!

  2.times do
    forum = Forum.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, user_id: user.id, location: "Munich", language_list: "English")
    Comment.create(description: Faker::Hipster.paragraph, forum_id: forum.id, user_id: user.id)
  end
end

5.times do |i|
  user = User.create!(email: Faker::Internet.email,
                      password: "123456",
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      birthday: Faker::Date.birthday,
                      job: Faker::Job.title,
                      gender: Faker::Gender.binary_type,
                      hobby_list: hobbies.sample,
                      base_location: "Los Angeles",
                      language_list: languages.sample,
                      birth_location: Faker::Address.city)

  gender = user.gender == "Male" ? "men" : "women"
  url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

  user.remote_photo_url = url
  user.save!

  2.times do
    forum = Forum.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, user_id: user.id, location: "Los Angeles", language_list: "English")
    Comment.create(description: Faker::Hipster.paragraph, forum_id: forum.id, user_id: user.id)
  end
end



jeff = User.create(email: "jeff@gmail.com",
                   password: "123456",
                   first_name: "Jeff",
                   last_name: "Yeung",
                   job: "Fireman",
                   gender: "Male",
                   hobby_list: hobbies.sample,
                   base_location: "Shanghai",
                   birthday: Faker::Date.birthday,
                   birth_location: "Paris",
                   remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012068/nxzy7fjsjght1mowd3t0.jpg"
                   )

elliot = User.create(email: "elliot@gmail.com",
                     password: "123456",
                     first_name: "Elliot",
                     last_name: "Tennison",
                     job: "Foot Specialist",
                     gender: "Male",
                     hobby_list: hobbies.sample,
                     base_location: "Shanghai",
                     birthday: Faker::Date.birthday,
                     birth_location: "Shanghai",
                     remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012083/btt73tsfl2zdap0mqerq.jpg"
                     )

const = User.create(email: "constantin@gmail.com",
                    password: "123456",
                    first_name: "Constantin",
                    last_name: "Eulenstein",
                    job: "Programmer",
                    gender: "Male",
                    hobby_list: hobbies.sample,
                    base_location: "Munich",
                    birthday: Faker::Date.birthday,
                    birth_location: "Munich",
                    remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575011826/btpnaxpn2tebv1hhznt0.jpg"
                    )

dan = User.create(email: "dan@gmail.com",
                  password: "123456",
                  first_name: "Dan",
                  last_name: "Galim",
                  job: "Waiter",
                  gender: "Male",
                  hobby_list: hobbies.sample,
                  base_location: "Los Angeles",
                  birthday: Faker::Date.birthday,
                  birth_location: "Los Angeles",
                  remote_photo_url: "https://avatars2.githubusercontent.com/u/56106195?v=4"
                  )

1.times do |i|
  user = User.create!(email: Faker::Internet.email,
                      password: "123456",
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      birthday: Faker::Date.birthday,
                      job: Faker::Job.title,
                      gender: Faker::Gender.binary_type,
                      hobby_list: hobbies.sample,
                      base_location: "Shanghai",
                      birth_location: Faker::Address.city)

  gender = user.gender == "Male" ? "men" : "women"
  url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

  user.remote_photo_url = url
  user.save!
end



# puts "created #{Language.count} languages"
puts "created #{User.count} users"
puts "created #{Locallect.count} locallects"
puts "created #{Explorer.count} explorers"
