# json.array! @users do |user|
#   json.id user.id
#   json.name user.name
#   json.reviews user.reviews
# end

# json.array! @menus do |menu|
#   json.id @menu.id
#   json.name @menu.name
#   json.cuisine @menu.restaurant_id
#   json.menuItems @menu.items
# end




# json.id @menu[0].id
# json.name @menu[0].name
# json.restaurant_id @menu[0].restaurant_id
# json.menuItems @menu[0].items
# json.array!(@menu[0].items) do |json, item|
#     json.testa item.id
# end
    # json.array!(@menu[0].items) do |json, menuItem|
    # json.id menuItem.id
    # json.name menu.menuItem.name
    # json.description menu.menuItem.description
    # json.image menu.menuItem.image
    # json.reviews do
    #     json.id menuItem.id
    #     json.rating menuItem.rating
    # end




# hash = json.reviews @menu[0].items.first.reviews

#     # json.id @menu[0].id
#     # json.name @menu[0].name
#     # json.restaurant_id @menu[0].restaurant_id
#     json.menuItems @menu[0].items.first.hash
#     json.tester hash


#      json.id @restaurant.id
#   json.name @restaurant.name
#   json.cuisine @restaurant.cuisine
#   json.image @restaurant.image
#   json.menu @restaurant.menus.first.items

