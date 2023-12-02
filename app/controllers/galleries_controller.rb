# frozen_string_literal: true

class GalleriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user

    @posts = @user.posts
    @posts = Post.all
  end

  before_action :authenticate_user!

  def show
    @user = current_user

    @posts = @user.posts

    @post = Post.all
  end
end
