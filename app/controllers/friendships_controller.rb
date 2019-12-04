class FriendshipsController < ApplicationController

  def index
    @friendship_requests = current_user.friendships.where("friendships.approved = ? and friendships.locallect_id = ? and friendships.declined = ?", false, current_user.id, false)
    @friendship_requests_sent = policy_scope(current_user.friendships).where("friendships.approved = ? and friendships.explorer_id = ? and friendships.declined = ?", false, current_user.id, false)
    @friendships_approved = policy_scope(current_user.friendships).where("friendships.approved = ?", true)
  end

  def show
    # will be used in some way for finding explorer who has sent the request?
    # friendship = Friendship.find(params[:id])
    # explorer = Explorer.find(friendship.explorer_id)
    # user = User.find(explorer.user_id)
    # redirect_to locallect_path(user.id)
  end

  def create
    @locallect = User.find(params[:locallect_id])
    @friendship = Friendship.create(request_message: params[:friendship][:request_message])
    @friendship.approved = false
    @friendship.declined = false
    @friendship.locallect_id = @locallect.id
    @friendship.explorer_id = current_user.id
    @friendship.save
    redirect_to locallect_path(@locallect)
    authorize @friendship
  end

  def destroy
  end

  def approve
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.approved = true
    @friendship.save
    authorize @friendship
    redirect_to locallect_friendships_path(current_user)
  end

  def reject
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.declined = true
    @friendship.save
    authorize @friendship
    redirect_to locallect_friendships_path(current_user)
  end
end
