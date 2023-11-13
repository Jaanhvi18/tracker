<<<<<<< HEAD

class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = current_user
        # @posts = Post.joins(:user).where(users: { user: current_user })
        @posts = @user.posts
    end
end


=======
# app/controllers/profiles_controller.rb
class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user

    @posts = @user.posts
  end
end
>>>>>>> 46fa50a0c845112338790cada2ad0c28ff0effb5
