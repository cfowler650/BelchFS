json.data @restaurants do |restaurant|
   json.(restaurant, :id, :name, :cuisine, :image)
   json.menuItems restaurant.items do |item|
      json.(item, :id, :name, :description, :image, :menu_id)
   end
end



