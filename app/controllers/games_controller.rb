class GamesController < ApplicationController
    def new
        @game = Game.new
    end
    def create
        @game = Game.new(game_params)
        if !@game.save
            render :new
        end
    end
    def game_params
        params.require(:name).permit(:release_date, :description, :platform, :ESRB_rating, :price)
    end
end
