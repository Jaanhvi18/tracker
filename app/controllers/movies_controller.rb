# frozen_string_literal: true

class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    return if @movie.save

    render :new
  end

  def movie_params
    params.require(:name).permit(:description, :release_date, :duration, :language, :director)
  end
end
