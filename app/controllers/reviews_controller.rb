class ReviewsController < ApplicationController

    def new 
      @review = Review.create!
    end


    private 

    def find_restaurant 
        @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def review_params 
        params.require(:review).permit(:content)
    end

end
