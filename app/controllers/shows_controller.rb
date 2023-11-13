class ShowsController < ApplicationController
    def new
        @show = Show.new
    end
    def create
        @show = Show.new(game_params)
        if !@show.save
            render :new
        end
    end
    def game_params
        params.require(:name).permit(:release_date, :description, :episodes, :seasons, :director, :on_going)
    end
end
