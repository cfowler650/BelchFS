class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all()
        render json: {data: @restaurants}
    end

    def show

         @restaurant = Restaurant.find(params[:id])
        #  @menu = @restaurant.items
    end

    #this is being sent to react menu page....need to figure out how to restructure the fetch to match this data that is now coming from jbuilder.....f
    #fetch from menu and update stuff that way

end


# Restaurant.find(2).menus.find_by(name: 'Main').items


#  add more items to main menu on restaurant 1... this way you can change the logic in the restaurant menu page
#     fetch to fetch an array of items instead of just a single item
#     similiar to how we fetch array of restaurants in other jsx file