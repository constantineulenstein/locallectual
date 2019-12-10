
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
                   admin: true,
                   bio: "French social reformer who loves charity. I invested my business profits in providing better conditions for my workers while also campaigning for social change. I have also invested money in our local community experiment in America.",
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
                     birth_location: "London",
                     admin: true,
                     bio: "Born in London to poor parents. I then moved to Shanghai where I found a job in the foot industry. After selling my foot business, I devoted the rest of my life to giving away my belongings to projects such as libraries, world peace and education.",
                     remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012083/btt73tsfl2zdap0mqerq.jpg"
                     )

const = User.create(email: "constantin@gmail.com",
                    password: "123456",
                    first_name: "Constantin",
                    last_name: "Eulenstein",
                    job: "Programmer",
                    gender: "Male",
                    hobby_list: hobbies.sample,
                    base_location: "Shanghai",
                    birthday: Faker::Date.birthday,
                    birth_location: "Munich",
                    admin: true,
                    bio: "I worked from an early age to improve the welfare of the displaced in Munich. In particular, I set up housing associations to offer good quality housing to former slum tenants. I also took an active role in the management and responsibility of the housing.",
                    remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575011826/btpnaxpn2tebv1hhznt0.jpg"
                    )

dan = User.create(email: "dan@gmail.com",
                  password: "123456",
                  first_name: "Dan",
                  last_name: "Galim",
                  job: "Waiter",
                  gender: "Male",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: "Los Angeles",
                  admin: true,
                  bio: "I worked a a waiter but also had a part-time job with cable TV Network CNN. I enjoy volunteering, learning about cultures, and meeting new people",
                  remote_photo_url: "https://avatars2.githubusercontent.com/u/56106195?v=4"
                  )

female1 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: "Kaitlin",
                  last_name: "Fasse",
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Kaitlin Fasse arrived at  Volunteer Center office last fall seeking a volunteer position, or as it turned out, several volunteer positions. After six years in an uninspiring office job, Kaitlin was longing to dive into work that excited her on a soul level. For Kaitlin, that work was educating and mentoring youth, even if it meant squeezing in a volunteer position during her lunch breaks.

Armed with several referrals to local tutoring programs, Kaitlin left our MATCH appointment and quickly began volunteering with a local educational enrichment project, The Young Writers Program.

Soon after our meeting, Kaitlin’s job was outsourced and she found herself with a modest severance package and a lot more flexibility in her schedule. While she might have viewed the lay off as a harrowing obstacle, she instead saw it as the “perfect opportunity” to pursue more of the volunteer work she enjoying.

We recently caught up with Kaitlin, now volunteering for a total of four non-profit programs, to discuss how her experiences volunteering are helping her understand how to effect real change, say no to fear-based decisions, and lead a life she loves.",
                  remote_photo_url: "https://www.larutadelsorigens.cat/wallpic/full/204-2045121_sweet-stylish-indian-girl-with-goggles-wallpaper-1920x1280p.jpg"
                  )

male1 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: "Jacob",
                  last_name: "Martinez",
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Jacob Martinez is a committed advocate for youth in Santa Cruz County. Over the past decade, he has introduced Watsonville teens to technology through after-school engineering and computer classes in the Pajaro Valley School District. As Project Director at ETR’s Watsonville TEC, Jacob led a variety of technology programs that supported youth from rural communities to pursue higher education. Under his leadership, students and programs went on to receive local and national recognition.

Despite his successes, he still saw a gap in the number of current and former students that didn’t have access to computers or the internet for their school work and in their professional lives. Out of this need, “Digital Nest” was born. Located in Watsonville, “Digital Nest” aims to provide a high-tech space for young people ages 12 to 24 to gain marketable technology skills.",
                  remote_photo_url: "http://news.bbc.co.uk/nol/shared/spl/hi/pop_ups/05/europe_poles_react/img/6.jpg"
                  )

female2 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "http://www.asianfortunenews.com/wp-content/uploads/2013/04/Jian-Ping-Photo.jpg"
                  )

male2 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://ak6.picdn.net/shutterstock/videos/32369656/thumb/1.jpg"
                  )

female3 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: "Mandy",
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Maddy is a special kind of fourteen-year-old who chose to spend her summer volunteering in a nonprofit office. When asked her why she wanted to spend her summer volunteering through YouthSERVE Summer Institute, she said she wanted to “do something this summer that is going to make a difference in the community.”

For five weeks, she came to work focused, determined, curious, and committed, donating 44 hours over two months to the Volunteer Center of Santa Cruz County. With the help of another Summer Institute student, Maddy created a video for others to lead their own volunteer project. She bravely interviewed volunteers to write up blog posts that inspired more people to volunteer. Tasked with designing her own volunteer project, Maddy spent hours researching and decided that she wanted to do a project that addressed her concerns about the environment. After meeting with agency partners, Maddy has led us to apply for a grant to pay an artist to create a mural with the help of local youth. Maddy’s mural will promote more sustainable modes of transportation to youth.",
                  remote_photo_url: "https://www.superprof.com.au/images/teachers/teacher-home-learn-spanish-from-enthusiastic-spanish-girl-from-barcelona-perth-bassendean.jpg"
                  )

male3 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.scu.edu/media/college-of-arts-and-sciences/physics/faculty-and-staff/Guy-Ramon-1.jpg"
                  )

female4 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "https://www.byrdie.com/thmb/wjoJJHM-Q0TFxEGIGRRKcDjDzCo=/700x366/filters:fill(auto,1)/cdn.cliqueinc.com__cache__posts__252490__middle-eastern-hair-tips-252490-1521496240109-fb.700x0c-56fb1e9160b9486bb22195e83ea93c51.jpg"
                  )

male4 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://images.thestar.com/loeysCGyCAeJE9CV8KwQLBzluEg=/650x650/smart/filters:cb(1564229144931)/https://www.thestar.com/content/dam/thestar/entertainment/movies/2019/07/21/canadian-actor-simu-liu-on-his-groundbreaking-role-as-marvel-superhero-shang-chi/simu_liu_2_.jpg"
                  )

female5 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "https://www.gettattoosideas.com/wp-content/uploads/2015/11/Black-and-White-Sleeve-Tattoos-For-Women.jpg"
                  )

male5 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.newtimes.co.rw/sites/default/files/main/articles/2015/04/12/1428868923Dummy-SATURDAY---3653.jpg"
                  )

female6 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "https://townsquare.media/site/482/files/2019/01/Grandma.png?w=980&q=75"
                  )

male6 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.yogatrail.com/sites/default/files/teacher/1846016/avatar.jpg"
                  )

female7 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "http://c1.thejournal.ie/media/2015/03/linda-ebbs-390x285.jpg"
                  )

male7 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://thetoptenchefs.com/wp/wp-content/uploads/2017/04/Saransh-Goila-sexiest-top-10-chefs-male-810x1024.jpg"
                  )

female8 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA0QxqjBf094_Xo74iJrxMTTzDST05UPIiGOtP3O2GcEX9vAIQkw&s"
                  )

male8 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.incimages.com/uploaded_files/image/970x450/getty_631080340_20001332181884391434_333562.jpg"
                  )

female9 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "New to Shanghai! I love meeting new people and showing people my culture. I could use some help getting to know the city!",
                  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTwHYdO20sWD5MLCEZ7iyomcfNjF0Rkz4-ejvzvJ48f8pd5vCeMA&s"
                  )

male9 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  job: Faker::Job.title,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  birth_location: Faker::Address.city,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://s3-media2.fl.yelpcdn.com/buphoto/MreaIagYOYLTEBWT4RZ-Mw/o.jpg"
                  )







# 5.times do |i|

#   user = User.create!(email: Faker::Internet.email,
#                       password: "123456",
#                       first_name: Faker::Name.first_name,
#                       last_name: Faker::Name.last_name,
#                       birthday: Faker::Date.birthday,
#                       job: Faker::Job.title,
#                       gender: Faker::Gender.binary_type,
#                       hobby_list: hobbies.sample,
#                       base_location: "Shanghai",
#                       language_list: languages.sample,
#                       birth_location: Faker::Address.city)

#   gender = user.gender == "Male" ? "men" : "women"
#   url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

#   user.remote_photo_url = url
#   user.save!

#   2.times do
#     forum = Forum.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, user_id: user.id, location: "Shanghai", language_list: "English")
#     Comment.create(description: Faker::Hipster.paragraph, forum_id: forum.id, user_id: user.id)
#   end
# end

# 5.times do |i|
#   user = User.create!(email: Faker::Internet.email,
#                       password: "123456",
#                       first_name: Faker::Name.first_name,
#                       last_name: Faker::Name.last_name,
#                       birthday: Faker::Date.birthday,
#                       job: Faker::Job.title,
#                       gender: Faker::Gender.binary_type,
#                       hobby_list: hobbies.sample,
#                       base_location: "Munich",
#                       language_list: languages.sample,
#                       birth_location: Faker::Address.city)

#   gender = user.gender == "Male" ? "men" : "women"
#   url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

#   user.remote_photo_url = url
#   user.save!

#   2.times do
#     forum = Forum.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, user_id: user.id, location: "Munich", language_list: "English")
#     Comment.create(description: Faker::Hipster.paragraph, forum_id: forum.id, user_id: user.id)
#   end
# end

# 5.times do |i|
#   user = User.create!(email: Faker::Internet.email,
#                       password: "123456",
#                       first_name: Faker::Name.first_name,
#                       last_name: Faker::Name.last_name,
#                       birthday: Faker::Date.birthday,
#                       job: Faker::Job.title,
#                       gender: Faker::Gender.binary_type,
#                       hobby_list: hobbies.sample,
#                       base_location: "Los Angeles",
#                       language_list: languages.sample,
#                       birth_location: Faker::Address.city)

#   gender = user.gender == "Male" ? "men" : "women"
#   url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

#   user.remote_photo_url = url
#   user.save!

#   2.times do
#     forum = Forum.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, user_id: user.id, location: "Los Angeles", language_list: "English")
#     Comment.create(description: Faker::Hipster.paragraph, forum_id: forum.id, user_id: user.id)
#   end
# end


# 1.times do |i|
#   user = User.create!(email: Faker::Internet.email,
#                       password: "123456",
#                       first_name: Faker::Name.first_name,
#                       last_name: Faker::Name.last_name,
#                       birthday: Faker::Date.birthday,
#                       job: Faker::Job.title,
#                       gender: Faker::Gender.binary_type,
#                       hobby_list: hobbies.sample,
#                       base_location: "Shanghai",
#                       birth_location: Faker::Address.city)

#   gender = user.gender == "Male" ? "men" : "women"
#   url = "https://randomuser.me/api/portraits/#{gender}/#{i}.jpg"

#   user.remote_photo_url = url
#   user.save!
# end



# puts "created #{Language.count} languages"
puts "created #{User.count} users"
puts "created #{Locallect.count} locallects"
puts "created #{Explorer.count} explorers"
