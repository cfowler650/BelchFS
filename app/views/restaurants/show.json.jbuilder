
#   menu = {  json.menu @restaurant.menus.first.items }




  json.id @restaurant.id
  json.name @restaurant.name
  json.cuisine @restaurant.cuisine
  json.image @restaurant.image
  json.menuItems @restaurant.menus.first.items do |item|
    json.(item, :name, :description, :image)
    json.reviews item.reviews
  end


#   json.tester @restaurant.menus.first.items.first.reviews


# json.menus @menus do |menu|
#   json.id menu.id
#   json.name menu.name
#   json.restaurant_id menu.restaurant_id
#   json.menuItems menu.items do |item|
#     json.(item, :id, :reviews)
#   end
# end


# # app/views/artists/index.json.jbuilder
# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)

#   json.albums artist.albums do |album|
#     json.(album, :id, :name)
#   end
# end