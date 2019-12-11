class FriendshipsController < ApplicationController

  def index
    @friendship_requests = current_user.friendships.where("friendships.approved = ? and friendships.locallect_id = ? and friendships.declined = ?", false, current_user.id, false).order(created_at: :desc)
    @friendship_requests_sent = policy_scope(current_user.friendships).where("friendships.approved = ? and friendships.explorer_id = ? and friendships.declined = ?", false, current_user.id, false).order(created_at: :desc)
    @friendships_approved = policy_scope(current_user.friendships).where("friendships.approved = ?", true).order(created_at: :desc)
  end

  def create
    @friendship = Friendship.new
    if policy(@friendship).create?
      @locallect = User.find(params[:locallect_id])
      @friendship = Friendship.create(request_message: params[:friendship][:request_message])
      @friendship.approved = false
      @friendship.declined = false
      @friendship.locallect_id = @locallect.id
      @friendship.explorer_id = current_user.id
      @friendship.save!
      flash[:alert] = "Friendship request has been sent!"

      # send email
      mail = UserMailer.with(user: @locallect.id, sender: current_user.id).friendrequest
      mail.deliver_later

      redirect_to locallect_path(@locallect)
      authorize @friendship
    else
      skip_authorization
      redirect_to edit_user_registration_path
      flash[:alert] = "You need to add a picture and your birthday to do this!"
    end
  end

  def approve
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.approved = true
    @friendship.save
    flash[:alert] = "Friendship request has been approved!"

    # send email
    user = User.find(Locallect.find(@friendship.locallect_id).user_id).id == current_user.id ? User.find(Explorer.find(@friendship.explorer_id).user_id) : User.find(Locallect.find(@friendship.locallect_id).user_id)
    mail = UserMailer.with(user: user.id, sender: current_user.id).friendrequest_approval
    mail.deliver_later


    authorize @friendship
    current_user.send_message(User.find(@friendship.explorer_id), "Hey, I've accepted your friend request. Let's chat!", "Conversation between #{@friendship.users.first.first_name} and #{@friendship.users.last.first_name}")
    redirect_to locallect_friendships_path(current_user)
  end

  def reject
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.declined = true
    @friendship.save
    flash[:alert] = "Friendship request has been rejected!"
    authorize @friendship
    redirect_to locallect_friendships_path(current_user)
  end
end
