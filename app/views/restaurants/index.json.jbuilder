totalr = 0

json.data @restaurants do |restaurant|
   json.(restaurant, :id, :name, :cuisine, :image)
   json.menuItems restaurant.items do |item|
      totalr += item.reviews.length
      json.(item, :id, :name, :description, :image, :menu_id)
      json.reviews item.reviews
   end
   json.total_reviews totalr
   totalr = 0
end



