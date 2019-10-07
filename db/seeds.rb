# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)rest

restaurant = Restaurant.create(name: 'Burger King', cuisine: 'American Fast Food', image: '/images/burger_small.jpg')

menu = Menu.create(name: 'Main', restaurant: restaurant)

item = Item.create(
        name: 'Dish 0',
        description: 'This burger is a whopping 5lbs, tomato, lettuce, grilled onion, pickled shallots, and to top it all off a delicious home made ciabatta baked fresh every morning in house. Enjoy this burger with a side of fries on the house. Dont forget the delicious melted swiss cheese',
        image: '/images/burger_small.jpg',
        menu: menu
)


user = User.create(
        name: 'Johnny Appleseed'
)

review = Review.create(
        body: 'Loved it loved it loved it! This was the best food I have had in decades. Great!',
        rating: 5,
        item: item,
        user: user
)


# dish_one = Item.create(
#     {
#         name: "Dish 1",
#         image: "/images/burger1.jpg",
#         description: 'This burger is a whopping 5lbs, tomato, lettuce, grilled onion, pickled shallots, and to top it all off a delicious home made ciabatta baked fresh every morning in house. Enjoy this burger with a side of fries on the house. Dont forget the delicious melted swiss cheese'
#     }
# )

# dish_two = Item.create(
#     {
#         name: "Dish 0",
#         image: "/images/burger2.jpg",
#         description: 'This burger is a whopping 5lbs, tomato, lettuce, grilled onion, pickled shallots, and to top it all off a delicious home made ciabatta baked fresh every morning in house. Enjoy this burger with a side of fries on the house. Dont forget the delicious melted swiss cheese'
#     }
# )