class CommentsController < ApplicationController

def index
end

def new
  @comment = Comment.new
end

def create
  @comment = params[:comment]
  redirect 
end

end
