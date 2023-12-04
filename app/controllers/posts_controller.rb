# frozen_string_literal: true

class PostsController < ApplicationController
  #before_action :set_post, only: [:show, :destroy]
  #rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

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


  #  # DELETE /posts/1 or /posts/1.json
  #  def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #     redirect_to profile_path(@post), notice: "Post was successfully destroyed." 
  #     head :no_content 
  #   end
 

  

  private

  # def set_post
  #   @post = Post.find(params[:id])
  # end


  # def show_params
  #   params.require(:name).permit(:release_date, :description, :episodes, :seasons, :director, :on_going)
  # end

  #   def movie_params
  #   params.require(:name).permit(:description, :release_date, :duration, :language, :director)
  # end

  # def game_params
  #   params.require(:name).permit(:release_date, :description, :platform, :ESRB_rating, :price)
  # end
  def post_params
    params.require(:post).permit(:media_name, :stars, :description)
  end

  

# def record_not_found
#   redirect_to products_path, alert: 'No such media'
# end
end



