# frozen_string_literal: true

class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    return if @game.save

    render :new
  end

  def game_params
    params.require(:name).permit(:release_date, :description, :platform, :ESRB_rating, :price, :stars)
  end
end
