class FriendshipsController < ApplicationController
  include SessionsHelper
  before_action :authenticate


  def create
    @user_in_view = User.find_by(id: params[:id])
    @friendship = Friendship.create(user_id: current_user.id, friend_id: params[:id])

    redirect_to @user_in_view
  end
end
