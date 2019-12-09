# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
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
              super
  end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected
  # ensure that no password is needed for any change except for email and password
  def update_resource(resource, params)
    if params[:current_password].present? || params[:password].present? || params[:password_confirmation].present? || params[:email] != current_user.email
      super
    else
      resource.update_without_password(custom_params)
    end
  end

  def custom_params
    params[:user].permit(:first_name, :last_name, :age, :job, :base_location, :birth_location, :bio, :arrival_date, :gender, :photo, :birthday, language_list: [], hobby_list: [])
  end


  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
