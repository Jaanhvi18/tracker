# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def new
    @post = Post.new
  end

  def create
    @params = post_params
    @media_type = @params.delete(:media_type)

    @post = current_user.posts.build(@params)
    debugger
    @post[:stars] = @params[:stars].to_i
    case @media_type
    when 'movie'
      @post.build_movie(name: @params[:media_title])
    when 'game'
      @post.build_game(name: @params[:media_title])
    when 'show'
      @post.build_show(name: @params[:media_title])
    end

    if @post.save
      redirect_to profile_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end


   # DELETE /posts/1 or /posts/1.json
   def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to profile_path(@post), notice: "Post was successfully destroyed." 
      head :no_content 
    end
 

  

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:media_title, :stars, :description, :media_type)
  end



def record_not_found
  redirect_to products_path, alert: 'No such media'
end
end