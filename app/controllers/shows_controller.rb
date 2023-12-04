# frozen_string_literal: true

class ShowsController < ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.new(game_params)
    return if @show.save

    render :new
  end

  def game_params
    params.require(:name).permit(:release_date, :description, :episodes, :seasons, :director, :on_going, :stars)
  end
end
