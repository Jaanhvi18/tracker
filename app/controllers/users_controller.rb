# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    redirect_to root_path
  end


  def index
    # @user = User.find(params[:id])
  end
end
