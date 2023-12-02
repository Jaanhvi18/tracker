# frozen_string_literal: true

# app/controllers/profiles_controller.rb
class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @posts = @user.posts
  end
end
