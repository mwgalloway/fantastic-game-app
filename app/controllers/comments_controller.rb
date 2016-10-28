class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.content = params[:comment][:content]
    @comment.user_id = current_user.id
    @comment.game_id = params[:game_id]
    @comment.save

    redirect_to game_path(@comment.game)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
