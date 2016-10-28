class GamesController < ApplicationController

  def index
    @games = Game.order_by_rank
  end

  def show
    @game = Game.find_by(id: params[:id])
    @comment = Comment.new
    @comment.game_id = @game.id
  end


end
