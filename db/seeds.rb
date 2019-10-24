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

images = [
'/images/wide1.jpg',
'/images/wide2.jpg',
'/images/wide3.jpg',
'/images/wide4.jpg',
'/images/wide5.jpg',
'/images/wide6.jpg',
'/images/wide7.jpg',
'/images/wide8.jpg',
'/images/wide9.jpg',
'/images/wide10.jpg',
'/images/wide11.jpg',
'/images/wide12.jpg',
'/images/wide13.jpg',
'/images/wide14.jpg',
'/images/wide15.jpg',
'/images/wide16.jpg',
'/images/wide17.jpg',
'/images/wide18.jpg',
'/images/wide19.jpg',
'/images/wide20.jpg',
'/images/wide21.jpg',
'/images/wide22.jpg',
'/images/wide23.jpg',
'/images/wide24.jpg'
]




item_images = ['/images/splash1.jpg',
    '/images/splash2.jpg',
    '/images/splash3.jpg',
    '/images/splash4.jpg',
    '/images/splash5.jpg',
    '/images/splash6.jpg',
    '/images/splash8.jpg',
    '/images/splash9.jpg',
    '/images/splash10.jpg',
    '/images/splash11.jpg',
    '/images/splash12.jpg',
    '/images/splash13.jpg',
    '/images/splash14.jpg',
    '/images/splash15.jpg',
    '/images/splash16.jpg',
    '/images/splash17.jpg',
    '/images/splash19.jpg',
    '/images/splash20.jpg',
    '/images/splash21.jpg',
    '/images/splash22.jpg',
    '/images/splash23.jpg',
    '/images/splash24.jpg',
    '/images/splash25.jpg',
    '/images/splash26.jpg',
    '/images/splash27.jpg',
    '/images/splash28.jpg',
    '/images/splash29.jpg',
    '/images/splash30.jpg',
    '/images/splash31.jpg',
    '/images/splash32.jpg',
    '/images/splash33.jpg',
    '/images/splash34.jpg',
    '/images/splash35.jpg',
    '/images/splash36.jpg',
    '/images/splash37.jpg',
    '/images/splash38.jpg',
    '/images/splash39.jpg',
    '/images/splash40.jpg',

]

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

user_reviews = ['Great service! Great food even for me! Gave away free watermelon slices upon arrival, free drinks for the wait and we received free milkshakes because we gave up our table to sit at the counter for a family with young children.',
    'Awful, just plain awful. never again never will I eat this again.',
    'I\'ve had much better, but this was tolerable. I wouldn\'t probably come back though.',
    'What an amazing place to eat at I will definitely come back again I really enjoyed this meal!',
    'If it were up to me I would order this for the rest of my life!',
    'Brilliant meal will be coming back, I will tell my friends too!',
    'The food was alright...I would probably order somethign else next time I did not enjoy this much',
    'I mean of all the foods I have tried this has got to be top 5, definitely coming back',
    'I cant wait to eat this again! it was soooooo good the best actually! Thank you so much!',
    'Burgers, fries, and milkshake were all unanimously praised. Housemade veggie burger was well-appreciated, as was the staff.',
    'Incredibly delicious food and fresh-cut fries, especially the sweet potato fries.  The menu is great, but the secret menu is even better.',
    'We are from out of town and this was the best place we have eaten! It was right next to way we were staying. Would recommend to everyone!',
    'Get there before the lunch crown and you will be happier. Burgers are always hot and delicious.',
    'It is a little hole in the wall but the staff was friendly and welcoming and the food was VERY good.',
    'Ordered this dish with fried pickles. The pickles were so good with the dip. The quinoa was different and interesting but delicious with the jalapenos dip.',
    'Definitely have to come here on a hungry stomach or you\'d have to take the rest to go.',
    'The fries were good, not extraordinary tasty and super greasy; as the main course.',
    'When they bring out your food, they bring out their housemade ketchup and housemade honey mustard that is like nectar of the gods.',
    'As far as food goes... idk what more you could like. Slight fine dining environment with fresh farm to table food.',
    'We got this dish, it went very well with our side of seasoned fish. I will be coming back!',
    'The portions are HUGE.  Honestly, I could have split my fajitas with at least two other people.',
    'Maybe okay.. if eaten in the restaurant... delivery was mediocre at best. Very sloppy food.',
    'The burrito sauce tasted very similar to ketchup, and the service was slow.',
    'I thought this dish was one of the best I had. My enchiladas were beef and a little spicy for me.',
    'It was fabulous! Excellent flavors in the foods. Large portions. Good prices.',
    'Really really good food. Great service. Owner makes it all from his own recipes. Hand tossed pizza crust was heavenly.',
    'Complete incompetence. From the front counter to the kitchen... the salsa was okay though.',
    'Really enjoy the food here, had the subs and calzones. Service was great. Staff was friendly and helpful.',
    'This place was awesome. The food is incredible and the staff was extremely helpful.',
    'Wow, this dish was great. It was perfect. Cheesy deliciousness. Thank you again for your wonderful food!',
    'Very solid, flavorful foods with a nice menu selection. I loved every second of it',
    'This place never disappoints!! I have been eating their pizza and the cannolis from this gem for years.',
    'Pretty average. Everything is really dry down to the mac and cheese.',
    'The banana pudding is OUT OF THIS WORLD. If you get one thing let it be the banana pudding. So creamy and delicious. I need the recipe so I am enjoy it at home too.',
    'This was okay but the baked beans were good. I do not typically like baked beans, but theirs were very good!',
    'The meal here was underwhelming. It is pretty lean and didn\'t have much flavor.',
    'The coleslaw sides were awful. Honestly could have better tasting coleslaw from the grocery store than this place. Nonetheless.. I will return.',
    'Legendary eats here, easy going menu, heavy and dark urban atmosphere, will recommend to my friends and family!',
    'I tried it for lunch one afternoon and wasn\'t impressed. I had the hot chicken platter along with this meal.',
    'If you are looking for something low-key and quick maybe this is worth a shot. However, food could be better',
    'I got this dish on a whim, but it was AMAZING! It could have used a little more cheese but still very good!'

 ]

#this is being indexed not sampled...length must be longer then amount of restaurants going in otherwise change it to sample
user_names = ['Sally Nickleback', 'Paul Mcartney',
     'Samuel Jackson',
      'Maurice Witherspoon',
       'Paul Brown',
       'Kyle Daleheart Jr',
        'Sir Thomas',
         'Robert Woodrow',
         'Jennifer Spy',
         'Lily Klondike',
         'Jack Rogers',
         'Kenny Sport',
          'Mildred Flopper',
          'Penny Wilson',
          'Cameron Jones',
          'Piccolo Walter',
          'Mary Johans',
          'Sarah Walter',
          'Jack Sparrow',
          'Mildred Cooper',
           'Susan Capper',
           'Marty Brooder',
           'James Toyota',
           'Silly Pete',
            'Charles Choplin',
            'Thomas Shelby',
             'Arthur Shelby',
             'Ada Alice',
             'Ned Stark',
             'Jon Jones',
             'Amy Winehouse',
             'Justin Beibs',
             'Tom Hardy']

#fill restaurants from csv into array restaurants l

CSV.foreach("../citystate2.csv", :headers => true) do |row|
    restaurants_list << row['restaurant']
end

#clean the restaurants of duplicate values
# uniq_restaurants = restaurants_list.uniq
uniq_restaurants = restaurants_list.uniq(&:downcase)

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
   rand(25..30).times do |x|
        item = Item.create(
                name: item_names.sample,
                description: item_descriptions.sample,
                image: item_images.sample,
                menu: menu
        )

        rand(10..20).times do |x|
            review = Review.create(
            body: user_reviews.sample,
            rating: rand(2..5),
            item: item,
            user: user
            )
        end
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