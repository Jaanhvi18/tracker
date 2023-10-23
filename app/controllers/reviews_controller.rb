class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
    end
end
