class FriendshipsController < ApplicationController

  def index
    @friendships = current_user.friendships
  end

  def show
    friendship = Friendship.find(params[:id])
    explorer = Explorer.find(friendship.explorer_id)
    user = User.find(explorer.user_id)
    redirect_to locallect_path(user.id)
  end

  def new
  end

  def create
  end

  def destroy
  end
end
