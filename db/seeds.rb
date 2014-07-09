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
              directions: '
                1. Sizzle bacon to desired crispiness on medium heat
                2. Crack eggs into pan and cook for ~1.5 minutes before flipping
                3. Cook for ~30 seconds before removing from heat')

Recipe.create(name: 'Cobb Salad',
              photo: File.open(File.join(Rails.root, 'app/assets/images/cobb-salad.jpg')),
              tag_list: 'lunch, primal',
              directions: '
                1. Gather bacon, romaine, avocado, corn, carrot, and egg
                2. Chop to desired size
                3. Mix in large bowl with your favorite dressing')

Recipe.create(name: 'Steak and Asparagus',
              photo: File.open(File.join(Rails.root, 'app/assets/images/beef_stirfry.jpg')),
              tag_list: 'dinner, primal',
              directions: '
                1. Cook vegetables in pan until tender
                2. Add sliced beef to pan and cook until no longer brown
                3. Season to your tastes')
