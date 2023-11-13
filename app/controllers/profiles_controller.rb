class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = current_user
        # @posts = Post.joins(:user).where(users: { user: current_user })
        @posts = @user.posts
    end
end
