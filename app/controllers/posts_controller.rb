class PostsController < ApplicationController
  def index
    @posts
  end

  def show
    @post = Post.find(params[:id])
  end
end
