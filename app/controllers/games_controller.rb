class GamesController < ApplicationController

  def index
    case params[:sort_by]
      when "1" then
        @games = Game.order_by_rank_asc
        @sort = "rank_asc"
      when "2" then
        @games = Game.order_by_rank_desc
        @sort = "rank_desc"
      when "3" then
        @games = Game.order_by_name_asc
        @sort = "name_asc"
      when "4" then
        @games = Game.order_by_name_desc
        @sort = "name_desc"
      when nil then
        @games = Game.order_by_rank_asc
        @sort = "rank_asc"
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
    @comment = Comment.new
    @comment.game_id = @game.id
  end


end
