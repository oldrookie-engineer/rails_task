class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
    redirect_to new_comment_path
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
