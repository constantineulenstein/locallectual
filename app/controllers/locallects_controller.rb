class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:show]

  def index
    search = params[:search]
    gender_array = t("gender_array", locale: :en).zip(t("gender_array", locale: :de), t("gender_array", locale: :fr))
    language_array = t("language_array", locale: :en).zip(t("language_array", locale: :de), t("language_array", locale: :fr))
    hobby_array = t("hobby_array", locale: :en).zip(t("hobby_array", locale: :de), t("hobby_array", locale: :fr))
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
        picked_hobbies = hobby_array.find_all { |sub_hobby| (sub_hobby & search[:hobby_list]).present? }
        @locallects = @locallects.tagged_with(picked_hobbies, any: true)
      end
    else
      @locallects = policy_scope(User).search_by_base_location(search[:query].split(", ").first).order(created_at: :desc)
    end

    @base_location = search[:query].present? ? search[:query] : search[:base_location]

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
