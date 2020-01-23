class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:locale].nil?
      redirect_to(root_path)
    end
    @users = User.all
  end
end

