class ForumsController < ApplicationController

  def index
    @forums = policy_scope(Forum).all
    search = params[:search]

    if search.present?
      if search[:location].present?
        @forums = @forums.search_by_location(search[:location])
      end
      if search[:language_list] != [""]
        @forums = @forums.tagged_with(search[:language_list], any: true)
      end
      @forums = @forums.order(created_at: :desc)
    else
      @forums = policy_scope(Forum).all
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
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    @forum.save
    redirect_to forum_path(@forum)
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:id])
    @forum.update(forum_params)
    @forum.save
    redirect_to forum_path(@forum)
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy
    redirect_to forums_path
  end

  private

  def forum_params
    params.require(:forum).permit(:title, :content)
  end
end
