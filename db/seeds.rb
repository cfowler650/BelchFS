# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)rest

restaurant = Restaurant.create(name: 'Arbys', cuisine: 'American Fast Food', image: '/images/arbys.jpg')

menu = Menu.create(name: 'Main', restaurant: restaurant)

item = Item.create(
        name: 'Sandwich 0',
        description: 'This sandwich is cheesy, really cheesy. The butter toast melts in your mouth. Comes with pepperjack cheese and roast beef',
        image: '/images/burger4.jpg',
        menu: menu
)


user = User.create(
        name: 'Billy Kramer'
)

review = Review.create(
        body: 'Fantastic sandwich, I have never had better!',
        rating: 5,
        item: item,
        user: user
)

item2 =  Item.create(
        name: 'Sandwich 1',
        description: 'If you love turkey this sandwich is the one for you. It comes with avocado bacon savory garden fresh tomato and mozzarella!',
        image: '/images/burger5.jpg',
        menu: menu
)


item3 = Item.create(
        name: 'Sandwich 2',
        description: 'A masterpiece, chili peppers, roasted garlic, jalapenos and a secret mustard sauce all on top of honey baked ham slices enveloped in a thick country potato bread home made by Arby himself.',
        image: '/images/burger.jpg',
        menu: menu
)



review2 = Review.create(
        body: 'Grand, I am really a fan of this ham',
        rating: 4,
        item: item3,
        user: user
)


review3 = Review.create(
        body: 'Turkey is not really my favorite but this was tolerable',
        rating: 3,
        item: item2,
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