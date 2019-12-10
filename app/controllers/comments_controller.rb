class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.forum_id = params[:forum_id]
    @comment.save
    redirect_to forum_path(Forum.find(@comment.forum_id))
    authorize @comment
  end

  def destroy
    @comment = Comment.find(params[:forum_id])
    @comment.destroy
    redirect_to forum_path(Forum.find(@comment.forum_id))
    authorize @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:description)
  end
end
