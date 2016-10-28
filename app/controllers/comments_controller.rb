class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.content = params[:comment][:content]
    @comment.user_id = current_user.id
    @comment.game_id = params[:game_id]
    @game = @comment.game

    if @comment.save
      redirect_to game_path(@comment.game)
    else
      flash[:error_object] = @comment
      render 'games/show'
    end
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
