class MoviesController < ApplicationController
    def new
        @movie = Movie.new
    end
    def create
        @movie = Movie.new(movie_params)
        if !@movie.save 
            render :new
        end
    end

    def movie_params
        params.require(:name).permit(:description, :release_date, :duration, :language, :director)
    end
end
