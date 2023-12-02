class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    
    case params[:media_type]
    when 'movie'
      @post.build_movie(name: post_params[:title])
    when 'game'
      @post.build_game(name: post_params[:title])
    when 'show'
      @post.build_show(name: post_params[:title])
    end
  
    if @post.save
      redirect_to profile_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end
  

  private

  def set_post
    @post = Post.find(params[:id])
  end


  def post_params
    params.require(:post).permit(:name, :stars, :description)
  end

  def get_media_name
    post-title = "Post Name Unknown"
    if post.game.present?
      post-title = post.game.name
    elsif post.movie.present?
      post-title = post.movie.name
    elsif post.show.present?
      post-title = post.show.name
    post-title
  end

  
end
