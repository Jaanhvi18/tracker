# frozen_string_literal: true

class ProfilesController < ActionController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end
end
