class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if params[:back]
      render :new
    else
      if @comment.save
        redirect_to comments_path, notice: 'コメントを作成しました！'
      else
        render :new
      end
    end
  end

  def show
    params[:id]
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to comments_path, notice: 'コメントを編集しました！'
    else
      render :edit
    end
  end

  def destroy
      @comment.destroy
      redirect_to comments_path, notice:"コメントを削除しました！"
  end

  def confirm
    @comment = Comment.new(comment_params)
    render :new if @comment.invalid?
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
