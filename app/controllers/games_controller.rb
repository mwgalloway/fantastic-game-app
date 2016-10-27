class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
    @comment = Comment.new
    @comment.game_id = @game.id
  end


end
