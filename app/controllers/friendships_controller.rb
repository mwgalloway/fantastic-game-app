class FriendshipsController < ApplicationController
  include SessionsHelper
  before_action :authenticate

  def index
    @friend_requests = current_user.friend_requests
  end

  def create
    @user_in_view = User.find_by(id: params[:id])
    @friendship = Friendship.create(user_id: current_user.id, friend_id: params[:id])

    redirect_to @user_in_view
  end

  def update
    current_user.confirm_friend(User.find(params[:friend_id]))
    redirect_to User.find(params[:friend_id])
  end
end
