# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create(name: 'Eggs and Bacon',
              photo: File.open(File.join(Rails.root, 'app/assets/images/eggs_and_bacon.jpg')),
              tag_list: 'breakfast, primal',
              directions: 'Sizzle bacon to desired crispiness on medium heat, Crack eggs into pan and cook for ~1.5 minutes before flipping, Cook for ~30 seconds before removing from heat')

Recipe.create(name: 'Cobb Salad',
              photo: File.open(File.join(Rails.root, 'app/assets/images/cobb-salad.jpg')),
              tag_list: 'lunch, primal',
              directions: 'Gather bacon romaine avocado corn carrot and egg, Chop to desired size, Mix in large bowl with your favorite dressing')

Recipe.create(name: 'Beef Stir-Fry',
              photo: File.open(File.join(Rails.root, 'app/assets/images/beef_stirfry.jpg')),
              tag_list: 'dinner, primal',
              directions: 'Cook vegetables in pan until tender, Add sliced beef to pan and cook until no longer brown, Season to your tastes')
