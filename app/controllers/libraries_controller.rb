class LibrariesController < ApplicationController
  include SessionsHelper
  before_action :authenticate

  def create
    user_id = session[:user_id]
    game_id = params[:game_id]
    UserGame.create(user_id: user_id, game_id: game_id)
    redirect_to game_path(game_id)
  end

  def destroy
    user_id = session[:user_id]
    game_id = params[:id]
    game = UserGame.find_by(user_id: user_id, game_id: game_id)
    game.destroy
    redirect_to game_path(game_id)
  end
end
