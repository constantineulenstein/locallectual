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

  def create
    @locallect = User.find(params[:locallect_id])
    @friendship = Friendship.create(request_message: params[:friendship][:request_message])
    @friendship.approved = false
    @friendship.locallect_id = @locallect.id
    @friendship.explorer_id = current_user.id
    @friendship.save
    redirect_to locallect_path(@locallect)
    authorize @friendship
  end

  def destroy
  end
end
