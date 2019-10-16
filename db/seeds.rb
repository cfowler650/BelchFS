# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)rest





# [mountain view, san jose, santa clara]
# [burger king, arbys, dennys ]


#  [{ mountain_view : [
#      burgers_king
#       arbys
#       dennys
#             ]

# }

# [This is a geat food adfomasdf
# adfomasdffasdfasdfasdfasdf

require 'csv'

restaurants_list = []

images = ['/images/food_1.jpeg',
'/images/food_2.jpeg',
'/images/food_3.jpeg',
 '/images/food_4.jpeg',
'/images/food_5.jpeg',
'/images/food_6.jpeg',
'/images/food_7.jpeg',
'/images/food_8.jpeg',
'/images/food_9.jpeg',
'/images/burger_small.jpg',
'/images/food_11.jpeg',
'/images/food_12.jpeg',
'/images/food_13.jpeg',
'/images/food_14.jpeg',
'/images/food_15.jpeg',
'/images/pizza.jpg',
'/images/food_17.jpeg',
'/images/food_18.jpeg',
'/images/food_19.jpeg',
'/images/food_20.jpeg']

cuisines = ['Italian', 'Chinese', 'Korean', 'Japanese', 'BBQ', 'American', 'Indian', 'French', 'Mexican']

item_names = ['Meatball Sub', 'Poke Bowl', 'Atlantic Turkey Sub', 'Big Mac', 'Tomato Bisque', 'Clam Chowder', 'Squash Soup', 'Lettuce Wrap', 'Monster Burger', 'Sprinkled Donut', 'Mashed Potatoes', 'Turkey Leg', 'Double Bacon Western Burger', 'Hot Dog & Fries', 'Corn Dog', 'Jambalaya Shrimp', 'Lobster Roll', 'Toasted Bagel', 'Chicken Taco', 'Steak Taco', 'Burrito', 'California Burrito', 'Grilled Cheese Sandwhich']
item_descriptions = ['Almond & Black Rice Pilaf, Roasted & Crispy Parsnip, Brown Butter-nut Puree, Sage Pumpkin Seed Butter',
'Spinach Orzotto, Black Garlic Brown Butter, Fried Capers, Lemon Mignonette',
'Seared Breast, & Confit Leg Quarter, Quinoa, Brussel\'s Sprouts & Delicata Squash, Chard, Fall Squash Puree',
 'Heritage Beef Tenderloin, Fondant Potato, Market Vegetables, Madeira Fig Bordelaise',
 'House-made Corzetti Pasta, Butternut, Pork Belly, Pear, Pumpkin Seed, Bread Crumbs, Sage Ricotta, Shiitake',
  'Sourdough, Avocado, Blistered Tomatoes, Pink Himalayan Salt, Cracked Pepper',
'Spinach, Mushrooms, Monterey Jack Cheese. Topped with Hollandaise
and Diced Tomatoes. Served with Homestyle Potatoes',
'Canadian Bacon or Smoked Salmon, Sliced Tomatoes, and Poached
Eggs served over English Muffins and topped with Hollandaise.
Served with Homestyle Potatoes'
]

user_reviews = ['I really enjoyed this food it was fantastic', 'Awful, just plain awful. never again never will I eat this again.', 'I\'ve had much better, but this was tolerable. I wouldn\'t probably come back though.', 'What an amazing place to eat at I will definitely come back again I really enjoyed this meal!', 'If it were up to me I would order this for the rest of my life!', 'Brilliant meal will be coming back, I will tell my friends too!', 'The food was alright...I would probably order somethign else next time I did not enjoy this much', 'I mean of all the foods I have tried this has got to be top 5, definitely coming back', 'I cant wait to eat this again! it was soooooo good the best actually! Thank you so much!' ]

#this is being indexed not sampled...length must be longer then amount of restaurants going in otherwise change it to sample
user_names = ['Sally Nickleback', 'Paul Mcartney', 'Samuel Jackson', 'Maurice Witherspoon', 'Paul Brown', 'Kyle Daleheart Jr', 'Sir Thomas', 'Robert Woodrow', 'Jennifer Spy', 'Lily Klondike', 'Jack Rogers', 'Kenny Sport', 'Mildred Flopper', 'Penny Wilson', 'Cameron Jones', 'Piccolo Yuler', 'Mary Johans', 'Sarah Walter', 'Jack Sparrow', 'Mildred Cooper', 'Susan Capper', 'Marty Brooder', 'James Toyota', 'Silly Pete', 'Charles Choplin', 'Thomas Shelby', 'Arthur Shelby','Ada Alice', 'Ned Stark', 'Jon Jones', 'Amy Winehouse', 'Justin Beibs', 'Tom Hardy']

#fill restaurants from csv into array restaurants l

CSV.foreach("../citystate2.csv", :headers => true) do |row|
    restaurants_list << row['restaurant']
end

#clean the restaurants of duplicate values
uniq_restaurants = restaurants_list.uniq

locations = []

#fill locations array with ['city','state']
CSV.foreach("../citystate2.csv", :headers => true) do |row|
    temp = [row['city'], row['state']]
    locations << temp
end

#for each restaurant create a new restaurant in the data base with the res name and sampled everything else
uniq_restaurants.each_with_index do |res, index|
   restaurant = Restaurant.create(name: res, cuisine: cuisines.sample, image: images.sample, location: locations.sample)
   menu = Menu.create(name: 'Main', restaurant: restaurant)
   user = User.create(
                name: user_names[index]
        )
   3.times do |x|
        item = Item.create(
                name: item_names.sample,
                description: item_descriptions.sample,
                image: images.sample,
                menu: menu
        )

        review = Review.create(
        body: user_reviews.sample,
        rating: rand(5),
        item: item,
        user: user
        )
   end
end




# restaurant = Restaurant.create(name: 'Holy Pies', cuisine: 'Pizza', image: '/images/pizza.jpg')

# menu = Menu.create(name: 'Main', restaurant: restaurant)

# item = Item.create(
#         name: 'Pepperoni Pie',
#         description: 'This pie has an incredible aroma when it comes out the oven. The herb and spices in our sauce will make you forget your wearabouts young traveler.',
#         image: '/images/pie1.jpg',
#         menu: menu
# )


# user = User.create(
#         name: 'Amy Storm'
# )

# review = Review.create(
#         body: 'This was the best pizza I have ever had in my young life!',
#         rating: 5,
#         item: item,
#         user: user
# )

# item2 =  Item.create(
#         name: 'Veggie Pie',
#         description: 'When it comes to pies...well we do it better than just about everybody. This pie is literally to die for. Even the meat eaters will love this one, onions, peppers, cilantro, roma tomatoes are just some of the flavors that will tickle your tongue with this delicious pizza hut favorite.',
#         image: '/images/pie3.jpg',
#         menu: menu
# )


# item3 = Item.create(
#         name: 'The Carnivore',
#         description: 'Think back to your ancient roots with this pie, let the smoldering smoky sausage flirt with your reptilian brain. Let your third eye experience this incredible mix of the highest quality meats there is. Pepperonies, sausages, ham, salami, any meat you can name is on this pie.',
#         image: '/images/pie2.jpg',
#         menu: menu
# )



# review2 = Review.create(
#         body: 'This pie is absolutely phenomenal, I will be taking all my friends here. The waitress was phenomenal as well and never left us hanging on refills. I can not wait to go back, thank you so much holy pie!',
#         rating: 5,
#         item: item3,
#         user: user
# )


# review3 = Review.create(
#         body: 'Veggie usually is not my thing, but this pizza was next level. I literally fell out of my seat on the first bite. The ranch was killer as well, we even got free sodas with our pies for being first timers!',
#         rating: 5,
#         item: item2,
#         user: user
# )



# review4 = Review.create(
#         body: 'I am outta here literally, what a joke, what an awful experience, I am going back to pizza hut',
#         rating: 2,
#         item: item2,
#         user: User.first
# )


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