class ProfilesController < ActionController
    before_action :authenticate_user!

    def show
        @user = current_user
    end
end