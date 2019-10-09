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