class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:show]

  def index
    search = params[:search]

    if search[:base_location].present?
      @locallects = policy_scope(User).search_by_base_location(search[:base_location]).order(created_at: :desc)
      # @locallects = @locallects.where(age: params[:start_age]..params[:end_age]) if params[:age] != '' && params[:age].present?
      @locallects = @locallects.where(age: (search[:start_age]..search[:end_age])) if search[:start_age] != '' && search[:start_age].present?
      @locallects = @locallects.where(gender: search[:gender]) if search[:gender] != '' && search[:gender].present? && params[:gender] != 'All'
      if search[:language_list] != [""]
        @locallects = @locallects.tagged_with(search[:language_list], any: true)
      end
      if search[:hobby_list] != [""]
        @locallects = @locallects.tagged_with(search[:hobby_list], any: true)
      end
    else
      @locallects = policy_scope(User).search_by_base_location(search[:query]).order(created_at: :desc)

    end

    @languages = ['Abkhaz',
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
    @base_location = search[:query].present? ? search[:query] : search[:base_location]

    @hobbies = ['Reading',
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
    @hobby = search[:query].present? ? search[:query] : search[:hobby]
  end

  def show
    authorize @locallect
    @friendship = Friendship.new
  end

  def edit
    @locallect = User.find(current_user.id)
    authorize @locallect
  end

  private

  def find_user
    @locallect = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :gender, :base_location, :arrival_date, :job, :birth_location, :mother_tongue)
  end

end
