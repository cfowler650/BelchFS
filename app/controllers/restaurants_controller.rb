class RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all()
        render :template => 'restaurants/index.json.jbuilder'
    end

    def show
         @restaurant = Restaurant.find(params[:id])
    end

end


