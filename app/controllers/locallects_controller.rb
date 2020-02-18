class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:show]

  def index
    search = params[:search]
    gender_array = t("gender_array", locale: :en).zip(t("gender_array", locale: :de), t("gender_array", locale: :fr))
    language_array = t("language_array", locale: :en).zip(t("language_array", locale: :de), t("language_array", locale: :fr))
    picked_gender = gender_array.find { |sub_gender| sub_gender.include?(search[:gender]) }
    if search[:base_location].present?
      @locallects = policy_scope(User).search_by_base_location(search[:base_location].split(", ").first).order(created_at: :desc)
      @locallects = @locallects.where(age: (search[:start_age]..search[:end_age])) if search[:start_age] != '' && search[:start_age].present?
      @locallects = @locallects.search_by_gender(picked_gender.join(" ")) if !picked_gender.nil? && search[:gender].present?
      if search[:language_list] != [""]
        picked_languages = language_array.find_all { |sub_language| (sub_language & search[:language_list]).present? }
        @locallects = @locallects.tagged_with(picked_languages, any: true)
      end
      if search[:hobby_list] != [""]
        @locallects = @locallects.tagged_with(search[:hobby_list], any: true)
      end
    else
      @locallects = policy_scope(User).search_by_base_location(search[:query].split(", ").first).order(created_at: :desc)
    end

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
    params.require(:user).permit(:first_name, :last_name, :age, :gender, :base_location, :arrival_date, :seek_location, :mother_tongue)
  end

end
