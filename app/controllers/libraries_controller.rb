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

    puts "YOU ARE TRYING TO DESTROY NOTHING"
  end
end
