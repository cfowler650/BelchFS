class MenusController < ApplicationController



    # def index
    #     @menus = Menu.where("restaurant_id = ?", params[:restaurant_id])
    # end

    # def show
    #     @menu = Menu.where("name = ?", params[:name]).where("restaurant_id = ?", params[:restaurant_id])
    # end

    # def index
    #     @menus = Menu.where("restaurant_id = ?", params[:restaurant_id])
    #     render json: {data: @menus}
    # end

    # def show


    #     @menu = Menu.where("restaurant_id = ?", params[:restaurant_id]).where("id = ?", params[:id])[0]
    #     #  @menu = Menu.where(id: params[:id]).where(name: params[:name])
    #     render json: {menu_data: @menu.items, menu_reviews: @menu.reviews}




    #     # @menus = Menu.where("restaurant_id = ?", params[:restaurant_id])
    #     # render json: {data: @menus}
    #     #  Restaurant.find(2).menus.find_by(name: 'Main').items

end
