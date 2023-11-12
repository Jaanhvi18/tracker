class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post.user = current_user
    @post = Post.new()
    @post.stars = post_params[:stars]
    @post.description = post_params[:description]
    # if post_params[:media_type] == "movie"
    #   @post.movie = Movie.new(post_params[:title])
    # elsif post_params[:media_type] == "game"
    #   @post.game = Game.new(post_params[:title])
    # else 
    #   @post.show = Show.new(post_params[:title])
    # end
    case post_params[:media_type]
    when "movie"
      @post.movie = Movie.new(:name => post_params[:title])
    when "game"
      @post.game = Game.new(:name => post_params[:title])
    when "show"
      @post.show = Show.new(:name => post_params[:title])
    end

    if @post.save
      redirect_to profile_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  private

  def post_params
    # Define your strong parameters for the post
    params.require(:post).permit(:title, :stars, :description, :media_type)
  end
end
