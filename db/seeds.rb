# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)rest

restaurant = Restaurant.create(name: 'Holy Pies', cuisine: 'Pizza', image: '/images/pizza.jpg')

menu = Menu.create(name: 'Main', restaurant: restaurant)

item = Item.create(
        name: 'Pepperoni Pie',
        description: 'This pie has an incredible aroma when it comes out the oven. The herb and spices in our sauce will make you forget your wearabouts young traveler.',
        image: '/images/pie1.jpg',
        menu: menu
)


user = User.create(
        name: 'Amy Storm'
)

review = Review.create(
        body: 'This was the best pizza I have ever had in my young life!',
        rating: 5,
        item: item,
        user: user
)

item2 =  Item.create(
        name: 'Veggie Pie',
        description: 'When it comes to pies...well we do it better than just about everybody. This pie is literally to die for. Even the meat eaters will love this one, onions, peppers, cilantro, roma tomatoes are just some of the flavors that will tickle your tongue with this delicious pizza hut favorite.',
        image: '/images/pie3.jpg',
        menu: menu
)


item3 = Item.create(
        name: 'The Carnivore',
        description: 'Think back to your ancient roots with this pie, let the smoldering smoky sausage flirt with your reptilian brain. Let your third eye experience this incredible mix of the highest quality meats there is. Pepperonies, sausages, ham, salami, any meat you can name is on this pie.',
        image: '/images/pie2.jpg',
        menu: menu
)



review2 = Review.create(
        body: 'This pie is absolutely phenomenal, I will be taking all my friends here. The waitress was phenomenal as well and never left us hanging on refills. I can not wait to go back, thank you so much holy pie!',
        rating: 5,
        item: item3,
        user: user
)


review3 = Review.create(
        body: 'Veggie usually is not my thing, but this pizza was next level. I literally fell out of my seat on the first bite. The ranch was killer as well, we even got free sodas with our pies for being first timers!',
        rating: 5,
        item: item2,
        user: user
)



review4 = Review.create(
        body: 'I am outta here literally, what a joke, what an awful experience, I am going back to pizza hut',
        rating: 2,
        item: item2,
        user: User.first
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