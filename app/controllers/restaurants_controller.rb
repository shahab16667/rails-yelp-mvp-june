class RestaurantsController < ApplicationController

    def index 
        @restaurants = Restaurant.all
    end

    def show 
        @restaurant = Restaurant(params[:id])
    end

    def new 
        @restaurant = Restaurant.new
    end

end
