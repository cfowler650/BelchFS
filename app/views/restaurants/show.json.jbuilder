  json.id @restaurant.id
  json.name @restaurant.name
  json.cuisine @restaurant.cuisine
  json.image @restaurant.image
  json.menuItems @restaurant.menus.first.items do |item|
    json.(item, :id, :name, :description, :image)
    json.reviews item.reviews
  end


