class FriendshipsController < ApplicationController
  include SessionsHelper
  before_action :authenticate

  def index
    @friend_requests = current_user.friend_requests
  end

  def create
    @user_in_view = User.find_by(id: params[:id])
    @friendship = Friendship.create(user_id: current_user.id, friend_id: params[:id])
    flash[:alert] = "Sent friend request to #{@user_in_view.username}!"

    redirect_to @user_in_view
  end

  def update
    friend = User.find(params[:friend_id])
    current_user.confirm_friend(friend)
    flash[:alert] = "Confirmed #{friend.username}'s friendship!"
    redirect_to User.find(friend)
  end

  def destroy
    @friendship = Friendship.find_by(user_id: params[:friend_id], friend_id: current_user.id)
    @friendship.destroy
    redirect_to friendships_path
  end

end
