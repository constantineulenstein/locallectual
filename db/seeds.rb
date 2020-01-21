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
           'Soccer',
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

jeff = User.create(email: "jeff.yeung23@gmail.com",
                   password: "123456",
                   first_name: "Jeff",
                   last_name: "Yeung",
                   gender: "Male",
                   hobby_list: hobbies.sample,
                   base_location: "Shanghai",
                   birthday: Faker::Date.birthday,

                   admin: true,
                   bio: "French social reformer who loves charity. I invested my business profits in providing better conditions for my workers while also campaigning for social change. I have also invested money in our local community experiment in America.",
                   remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012068/nxzy7fjsjght1mowd3t0.jpg"
                   )

elliot = User.create(email: "elliot.s.tennison@gmail.com",
                     password: "123456",
                     first_name: "Elliot",
                     last_name: "Tennison",
                     gender: "Male",
                     hobby_list: hobbies.sample,
                     base_location: "London",
                     birthday: Faker::Date.birthday,

                     admin: true,
                     bio: "Born in London to poor parents. I then moved to Shanghai where I found a job in the foot industry. After selling my foot business, I devoted the rest of my life to giving away my belongings to projects such as libraries, world peace and education.",
                     remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575012083/btt73tsfl2zdap0mqerq.jpg"
                     )

const = User.create(email: "constantin.eulenstein@t-online.de",
                    password: "123456",
                    first_name: "Constantin",
                    last_name: "Eulenstein",
                    gender: "Male",
                    hobby_list: hobbies.sample,
                    base_location: "Munich",
                    birthday: Faker::Date.birthday,

                    admin: true,
                    bio: "I worked from an early age to improve the welfare of the displaced in Munich. In particular, I set up housing associations to offer good quality housing to former slum tenants. I also took an active role in the management and responsibility of the housing.",
                    remote_photo_url: "http://res.cloudinary.com/constantineulenstein/image/upload/c_fill,h_300,w_300/v1575011826/btpnaxpn2tebv1hhznt0.jpg"
                    )

dan = User.create(email: "dangaligato@gmail.com",
                  password: "123456",
                  first_name: "Dan",
                  last_name: "Galim",
                  gender: "Male",
                  hobby_list: hobbies.sample,
                  base_location: "Shanghai",
                  birthday: Faker::Date.birthday,
                  admin: true,
                  bio: "I worked a a waiter but also had a part-time job with cable TV Network CNN. I enjoy volunteering, learning about cultures, and meeting new people",
                  remote_photo_url: "https://avatars2.githubusercontent.com/u/56106195?v=4"
                  )

female1 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: "Kaitlin",
                  last_name: "Fasse",
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  language_list: ["English", "Arabic", "German"],
                  birthday: Faker::Date.birthday,
                  admin: true,
                  bio: "I arrived at  Volunteer Center office last fall seeking a volunteer position, or as it turned out, several volunteer positions. After six years in an uninspiring office job, I was longing to dive into work that excited her on a soul level. For me, that work was educating and mentoring youth, even if it meant squeezing in a volunteer position during my lunch breaks.

Armed with several referrals to local tutoring programs, I left our MATCH appointment and quickly began volunteering with a local educational enrichment project, The Young Writers Program.

Soon after our meeting, my job was outsourced and she found herself with a modest severance package and a lot more flexibility in my schedule. While I might have viewed the lay off as a harrowing obstacle, I instead saw it as the “perfect opportunity” to pursue more of the volunteer work.",
                  remote_photo_url: "https://www.larutadelsorigens.cat/wallpic/full/204-2045121_sweet-stylish-indian-girl-with-goggles-wallpaper-1920x1280p.jpg"
                  )

male1 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: "Jacob",
                  last_name: "Martinez",
                  gender: "Male",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  language_list: ["English", "Arabic", "German"],
                  birthday: Faker::Date.birthday,
                  admin: true,
                  bio: "I am a committed advocate for youth in Santa Cruz County. Over the past decade, I have introduced Watsonville teens to technology through after-school engineering and computer classes in the Pajaro Valley School District. As Project Director at ETR’s Watsonville TEC, I led a variety of technology programs that supported youth from rural communities to pursue higher education. Under my leadership, students and programs went on to receive local and national recognition.",
                  remote_photo_url: "http://news.bbc.co.uk/nol/shared/spl/hi/pop_ups/05/europe_poles_react/img/6.jpg"
                  )

female2 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "Arabic", "German"],
                  admin: true,
                  bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Munich for quite some time now and know all hidden gems :)",
                  remote_photo_url: "http://www.asianfortunenews.com/wp-content/uploads/2013/04/Jian-Ping-Photo.jpg"
                  )

male2 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "Arabic", "German"],
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://ak6.picdn.net/shutterstock/videos/32369656/thumb/1.jpg"
                  )

female3 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: "Mandy",
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  language_list: ["English", "Arabic", "German"],
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  admin: true,
                  bio: "Maddy is a special kind of fourteen-year-old who chose to spend her summer volunteering in a nonprofit office. When asked her why she wanted to spend her summer volunteering through YouthSERVE Summer Institute, she said she wanted to “do something this summer that is going to make a difference in the community.”

For five weeks, she came to work focused, determined, curious, and committed, donating 44 hours over two months to the Volunteer Center of Santa Cruz County. With the help of another Summer Institute student, Maddy created a video for others to lead their own volunteer project. She bravely interviewed volunteers to write up blog posts that inspired more people to volunteer. Tasked with designing her own volunteer project, Maddy spent hours researching and decided that she wanted to do a project that addressed her concerns about the environment. After meeting with agency partners, Maddy has led us to apply for a grant to pay an artist to create a mural with the help of local youth. Maddy’s mural will promote more sustainable modes of transportation to youth.",
                  remote_photo_url: "https://www.superprof.com.au/images/teachers/teacher-home-learn-spanish-from-enthusiastic-spanish-girl-from-barcelona-perth-bassendean.jpg"
                  )

male3 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  language_list: ["English", "German"],
                  birthday: Faker::Date.birthday,
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.scu.edu/media/college-of-arts-and-sciences/physics/faculty-and-staff/Guy-Ramon-1.jpg"
                  )

female4 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "German"],
                  admin: true,
                  bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Munich for quite some time now and know all hidden gems :)",
                  remote_photo_url: "https://www.byrdie.com/thmb/wjoJJHM-Q0TFxEGIGRRKcDjDzCo=/700x366/filters:fill(auto,1)/cdn.cliqueinc.com__cache__posts__252490__middle-eastern-hair-tips-252490-1521496240109-fb.700x0c-56fb1e9160b9486bb22195e83ea93c51.jpg"
                  )

male4 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "German"],
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://images.thestar.com/loeysCGyCAeJE9CV8KwQLBzluEg=/650x650/smart/filters:cb(1564229144931)/https://www.thestar.com/content/dam/thestar/entertainment/movies/2019/07/21/canadian-actor-simu-liu-on-his-groundbreaking-role-as-marvel-superhero-shang-chi/simu_liu_2_.jpg"
                  )

female5 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "German"],
                  admin: true,
                  bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Munich for quite some time now and know all hidden gems :)",
                  remote_photo_url: "https://www.gettattoosideas.com/wp-content/uploads/2015/11/Black-and-White-Sleeve-Tattoos-For-Women.jpg"
                  )

male5 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "German"],
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.newtimes.co.rw/sites/default/files/main/articles/2015/04/12/1428868923Dummy-SATURDAY---3653.jpg"
                  )

female6 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "German"],
                  admin: true,
                  bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Munich for quite some time now and know all hidden gems :)",
                  remote_photo_url: "https://townsquare.media/site/482/files/2019/01/Grandma.png?w=980&q=75"
                  )

male6 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: ["English", "German"],
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.yogatrail.com/sites/default/files/teacher/1846016/avatar.jpg"
                  )

female7 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: "English",
                  admin: true,
                  bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Munich for quite some time now and know all hidden gems :)",
                  remote_photo_url: "http://c1.thejournal.ie/media/2015/03/linda-ebbs-390x285.jpg"
                  )

male7 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: "English",
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://thetoptenchefs.com/wp/wp-content/uploads/2017/04/Saransh-Goila-sexiest-top-10-chefs-male-810x1024.jpg"
                  )

female8 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: "English",
                  admin: true,
                  bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Munich for quite some time now and know all hidden gems :)",
                  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA0QxqjBf094_Xo74iJrxMTTzDST05UPIiGOtP3O2GcEX9vAIQkw&s"
                  )

male8 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: "English",
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://www.incimages.com/uploaded_files/image/970x450/getty_631080340_20001332181884391434_333562.jpg"
                  )

female9 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Female",
                  hobby_list: hobbies.sample,
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: "English",
                  admin: true,
                  bio: "New to Munich! I love meeting new people and showing people my culture. Would love to get in touch!",
                  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTwHYdO20sWD5MLCEZ7iyomcfNjF0Rkz4-ejvzvJ48f8pd5vCeMA&s"
                  )

male9 = User.create(email: Faker::Internet.email,
                  password: "123456",
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  gender: "Male",
                  hobby_list: "running",
                  base_location: "Munich",
                  birthday: Faker::Date.birthday,
                  language_list: "English",
                  admin: true,
                  bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
                  remote_photo_url: "https://s3-media2.fl.yelpcdn.com/buphoto/MreaIagYOYLTEBWT4RZ-Mw/o.jpg"
                  )



constPost = Forum.create(title: "What can I do?", description: "Pray for those who are afraid. Pray against xenophobia or abuse and those who would seek to exploit people’s misery for profit. Pray for those who care for refugees and are worn down. You probably cannot go to the worst places and help but you can support and encourage those who do work there.
Find out more. There is a lot of fear. There is a lot of misinformation. So make a decision to find out reliable information and share it in your conversations and on social media. Be an advocate for truth. Reassure. Ask questions to help friends consider what is right. Challenge falsehood. If politics is your thing, look at our advocacy materials and get ready to speak up. Pray for the politics of the situation.
Are there refugees or asylum seekers living near you? Can you befriend them? Can you volunteer with a local NGO or persuade your church to get involved? If not, be sensible and don’t act alone but you and a friend can still say hello to refugees (of your gender).
What simple things will make a difference? Helping someone understand the bus timetable or how to find what they want in the supermarket or how to fill in a form. Encouraging them in their language learning. Enjoying the local park / museum together. Accompanying a mum and child to a parent and toddler club. Playing sport or games together. Cooking for one another and sharing meals.", user_id: jeff.id)

Comment.create(forum_id: constPost.id, user_id: male9.id, description: "Thanks for the info!")

Forum.create(title: "Playstation to give", description: "Hey everyone, I've got a playstation to give for free. Send me a friend request if interested", user_id: male7.id, location: "Shanghai")

quest = Forum.create(title: "Questions regarding metro", description: "Good day, can someone tell me where to buy the metro cards if I do not have weChat yet?", location: "Shanghai", user_id: male3.id)
Comment.create(forum_id: quest.id, user_id: dan.id, description: "Hi, you can just go to the service points and ask where the ticket booths are. Keep in mind some ticket booths only take coins. Which Metro station are you looking to buy the ticket? Maybe I can help you out?")
Comment.create(forum_id: quest.id, user_id: male3.id, description: "Jin an temple. is that close to you? Want to try out for the first time this weekend")


Forum.create(title: "المشرعين، لدفع الرئيس دونالد ترامب إلى اتخاذ نهج أكثر صرامة ضد أنقرة", description: "رئيسية المتعلقة بتنمية العلاقات بين الاتحاد الأوروبي ودول مجلس التعاون الخليجي، وتشجيع تحليل السياسات والحوار والتعاون في مجال التجارة والاستثمار والشؤون الاقتصادية بين أصحاب المصلحة من الاتحاد الأوروبي ودول مجلس التعاون الخليجي على الصعيدين الإقليمي والمحلي في سياق عملية التنويع الاقتصادي لدول مجلس التعاون الخليجي. كما ناقشت حلقات العمل دور التعليم في توفير مهارات المستقبل والإطار القانوني للتكنولوجيا، ودور التكنولوجيا في قطاعات اللوجستيات والصناعة التحويلية والتجارة الإلكترونية والثورة الصناعية الرابعة والاستعداد لها بالإضافة لدور المرأة في مجال ريادة الأعمال التقنية.
وجاء الملتقى من أجل المساهمة في تعزيز العلاقات بين الاتحاد الأوروبي ودول مجلس التعاون الخليجي من خلال د", user_id: female3.id, language_list: "Arabic")
Forum.create(title: "مسبوقة، تطالب برحيل مجمل الطبقة السياسية التقليدية التي توصف بأنها فاسدة", description: " السنيدي وزير التجارة والصناعة وبحضور عدد من أصحاب المعالي والسعادة وبمشاركة أكثر من 450 ممثلا من دول الاتحاد الأوروبي ودول مجلس التعاون الخليجي.
وأكد سعادة ميكيل تشيرفوني دورسو مندوب الاتحاد الأوربي لدى السلطنة والبحرين وقطر والسعودية أن الاتحاد الأوروبي شريك أساسي لدول الخليج في مجال التبادل التجاري، مشيرا إلى أن التقدم التكنولوجي في مجال التجارة الإلكترونية توسع كثيرا في مجال تبادل السلع، مبينا: أن المؤتمر يركز على التطور التقني ويدفع المشاركين إلى التفكير بالعوامل التقنية التي تؤثر على حركة تبادل السلع، وبين سعادته في كلمته أن السلطنة مركز بحري أساسي يربط بين قارة آسيا وأوروبا إضافة إلى أنها مركز للحصول على السلع من أفريقيا.
و", user_id: female4.id, language_list: "Arabic")
Forum.create(title: "مسبوقة، تطالب برحيل مجمل الطبقة السياسية التقليدية التي توصف بأنها فاسدة", description: "بن حسن الذيب وكيل وزارة التجارة والصناعة: إن المنتدى يعكس مدى أهمية العلاقات الخليجية الأوروبية التي تمتد إلى حقبة طويلة عبر التاريخ.
وأضاف سعادته: بلغ حجم التبادل التجاري التجاري السلعي لدول المجلس مع دول الاتحاد الأوروبي لعام 2018 م (182) مليار دولار أمريكي مقارنة بـ(164.2) مليار دولار في عام 2017م وبنسبة ارتفاع بلغت 10.8%. وبلغت الصادرات السلعية وطنية المنشأ غير النفطية من دول مجلس إلى دول الاتحاد الاتحاد الأوروبي ما يقارب 11.3مليار دولار أمريكي في عام 2018م، مقارنة بـ9.1 مليار دولار أمريكي لعام 2017م مرتفعة بما نسبته 25.3%.
وقال: تعتبر العلاقات الخليجية الأوروبية اليوم أكثر حيوية على الصعيد الاقتصادي والتجاري، إلا أن دفع هذه العلاقات إلى آفاق أوسع يتطلب بذل المزيد من الجهد لتذليل الصعوبات والتغلب على التحديات التي تواجه هذا ا", user_id: male2.id, language_list: "Arabic")
Forum.create(title: "الاستعماري لباريس في المنطقة العربية، ولكن فرنسا تريد إثبات وجودها في هذه", description: " والتطوير في المستقبل».
وأشار سعادة وكيل وزارة التجارة والصناعة إلى إعلان دول مجلس التعاون خلال السنوات الأخيرة عن رؤى استراتيجية شاملة للتنمية المستدامة تهدف إلى التنويع الاقتصادي والانتقال إلى عصر تحول الاقتصاد من الاعتماد على النفط إلى اقتصاد متقدم قائم على التكنولوجيا الفائقة وقادر على التكيف مع الاتجاهات والتغييرات العالمية، اقتصاد مبني على وسائل التكنولوجيا الرقمية، بحكم توفر كل المقومات التنموية في دول مجلس التعاون الخليجي .
وأضاف: تتضمن الرؤى الاستراتيجية إقامة مصانع ذات تكنولوجيا متطورة، وإنشاء المدن الذكية تعتمد على إنترنت الأشياء والذكاء الاصطناعي والأنظمة والتطبيقات الإلكترونية الذكية. أيضاً قامت غالبية دول مجلس التعاون الخليجي في السنوات الماضية بتطوير النظم التعليمية، والبنى التحتية التكنولوجية وهو ما سيسهل استيعاب التقنيات الناشئة ويواكب كافة معطيات الثورة الصناعية الرابعة ويجعل هذه الدول قادرة على الاستفادة منها بصورة عالمية وجذب العديد من الفرص الاستثمارية للمنطقة مستقبلا.
وأعرب سعادته عن أمله في تطوير الشراكة بين دول مجلس التعاون ودول الاتحاد الأوروبي من خلال تبادل الخبرات ", user_id: male1.id, language_list: "Arabic")
Forum.create(title: "الأزمة على اعتبار أن لبنان من بقايا نفوذها القديم، كما أنها تريد أن تظهر كأنها المُدافع", description: "، ويساعد على إقامة شراكات استراتيجية لزيادة الاستثمار والنشاطات التجارية «بين بلداننا». داعيا سعادته الحضور للتعرف على الممكنات والتسهيلات والفرص الاستثمارية التي تمتلكها دول الخليج والقطاعات الواعدة التي تستهدفها دول المنطقة في خططها الاستراتيجية، والتعاون البناء بين هذه الدول والذي يعكس الروح الخليجية حيث تشرق فيه المشاريع الاستثمارية المشتركة مما يجعلها سوقا واعدا يشجع على جذب الاستثمارات ويقدم التسهيلات والممكنات لتحقيق ذلك.
و", user_id: female2.id, language_list: "Arabic")
Forum.create(title: "الأوروبي الوحيد عن المسيحيين في لبنان", description: "كر بينها الاستقرار السياسي والاقتصادي، واستقلال العملة وسهولة تحويل الأموال، وأسعار تنافسية الخدمات، وإعفاء ضريبي لمدة خمس سنوات ويمكن تمديدها وفق شروط معينة إلى 10 سنوات، وتملك أجنبي كامل: نسبة تملك تبدأ من 100% مع ذلك إصدار قانون الاستثمار الأجنبي الجديد، وخدمات المحطة الوا", user_id: male3.id, language_list: "Arabic")
# 5.times do |i|


# male12 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: "Yiyo",
#                   last_name: "Martinez",
#                   gender: "Male",
#                   hobby_list: hobbies.sample,
#                   base_location: "Shanghai",
#                   language_list: ["English", "Arabic", "Chinese"],
#                   birthday: Faker::Date.birthday,
#                   admin: true,
#                   bio: "I am a committed advocate for youth in Santa Cruz County. Over the past decade, I have introduced Watsonville teens to technology through after-school engineering and computer classes in the Pajaro Valley School District. As Project Director at ETR’s Watsonville TEC, I led a variety of technology programs that supported youth from rural communities to pursue higher education. Under my leadership, students and programs went on to receive local and national recognition.",
#                   remote_photo_url: "http://www.prettydesigns.com/wp-content/uploads/2014/12/Mens-Hot-Hairstyles.jpg"
#                   )

# female22 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Female",
#                   hobby_list: hobbies.sample,
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Arabic", "Chinese"],
#                   admin: true,
#                   bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Shanghai for quite some time now and know all hidden gems :)",
#                   remote_photo_url: "https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-1024x1024.jpg"
#                   )

# male22 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Male",
#                   hobby_list: "running",
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Arabic", "Chinese"],
#                   admin: true,
#                   bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
#                   remote_photo_url: "https://www.musickdermatology.com/wp-content/uploads/2018/06/senior-man-outdoor-picture-id842794008.jpg"
#                   )

# female32 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: "Mandy",
#                   last_name: Faker::Name.last_name,
#                   gender: "Female",
#                   hobby_list: hobbies.sample,
#                   language_list: ["English", "Arabic", "Chinese"],
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   admin: true,
#                   bio: "Maddy is a special kind of fourteen-year-old who chose to spend her summer volunteering in a nonprofit office. When asked her why she wanted to spend her summer volunteering through YouthSERVE Summer Institute, she said she wanted to “do something this summer that is going to make a difference in the community.”

# For five weeks, she came to work focused, determined, curious, and committed, donating 44 hours over two months to the Volunteer Center of Santa Cruz County. With the help of another Summer Institute student, Maddy created a video for others to lead their own volunteer project. She bravely interviewed volunteers to write up blog posts that inspired more people to volunteer. Tasked with designing her own volunteer project, Maddy spent hours researching and decided that she wanted to do a project that addressed her concerns about the environment. After meeting with agency partners, Maddy has led us to apply for a grant to pay an artist to create a mural with the help of local youth. Maddy’s mural will promote more sustainable modes of transportation to youth.",
#                   remote_photo_url: "https://cdn1.i-scmp.com/sites/default/files/styles/1200x800/public/images/methode/2019/01/18/bebeebcc-1a24-11e9-8ff8-c80f5203e5c9_image_hires_035631.JPG?itok=KsLMqwHC&v=1547754998"
#                   )

# male32 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Male",
#                   hobby_list: "running",
#                   base_location: "Shanghai",
#                   language_list: ["English", "Chinese"],
#                   birthday: Faker::Date.birthday,
#                   admin: true,
#                   bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
#                   remote_photo_url: "https://www.scu.edu/media/college-of-arts-and-sciences/physics/faculty-and-staff/Guy-Ramon-1.jpg"
#                   )

# female42 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Female",
#                   hobby_list: hobbies.sample,
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Chinese"],
#                   admin: true,
#                   bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Shanghai for quite some time now and know all hidden gems :)",
#                   remote_photo_url: "https://c1.staticflickr.com/5/4033/4229368046_20449c78a5.jpg"
#                   )

# male42 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Male",
#                   hobby_list: "running",
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Chinese"],
#                   admin: true,
#                   bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
#                   remote_photo_url: "https://images.thestar.com/loeysCGyCAeJE9CV8KwQLBzluEg=/650x650/smart/filters:cb(1564229144931)/https://www.thestar.com/content/dam/thestar/entertainment/movies/2019/07/21/canadian-actor-simu-liu-on-his-groundbreaking-role-as-marvel-superhero-shang-chi/simu_liu_2_.jpg"
#                   )

# female52 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Female",
#                   hobby_list: hobbies.sample,
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Chinese"],
#                   admin: true,
#                   bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Shanghai for quite some time now and know all hidden gems :)",
#                   remote_photo_url: "http://pixel.brit.co/wp-content/uploads/2015/03/tanya-menendez.jpg"
#                   )

# male52 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Male",
#                   hobby_list: "running",
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Chinese"],
#                   admin: true,
#                   bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
#                   remote_photo_url: "http://media.breitbart.com/media/2015/09/IMG_3153.jpg"
#                   )

# female62 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Female",
#                   hobby_list: hobbies.sample,
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Chinese"],
#                   admin: true,
#                   bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Shanghai for quite some time now and know all hidden gems :)",
#                   remote_photo_url: "http://buzzsouthafrica.com/wp-content/uploads/Mpho-MacChambers.jpg"
#                   )

# male62 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Male",
#                   hobby_list: "running",
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: ["English", "Chinese"],
#                   admin: true,
#                   bio: "Usually work from 9-6pm, but early in the morning I love jogging around the city. It's also a great way to familiariz yourself with the city. Hope to share this interest with others and show them around",
#                   remote_photo_url: "https://www.chinadailyhk.com/attachments/image/62/166/229/450802_157379/450802_157379_600_jpg.jpg"
#                   )

# female72 = User.create(email: Faker::Internet.email,
#                   password: "123456",
#                   first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   gender: "Female",
#                   hobby_list: hobbies.sample,
#                   base_location: "Shanghai",
#                   birthday: Faker::Date.birthday,
#                   language_list: "English",
#                   admin: true,
#                   bio: "I love meeting new people and showing them my culture. My favorite activity is hanging out in Englischer Garten and playing soccer. I have been living in Shanghai for quite some time now and know all hidden gems :)",
#                   remote_photo_url: "https://previews.123rf.com/images/lightfieldstudios/lightfieldstudios1807/lightfieldstudios180709260/104556787-beautiful-asian-volunteer-girl-with-clipboard-and-blurred-colleagues-on-background.jpg"
#                   )



puts "created #{User.count} users"
puts "created #{Locallect.count} locallects"
puts "created #{Explorer.count} explorers"
