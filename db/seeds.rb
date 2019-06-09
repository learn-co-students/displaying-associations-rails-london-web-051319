# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = ['horror', 'romance', 'fantasy', 'adult', 'biography', 'reference', 'fiction', 'non-fiction', 'thriller']

categories = ['movies', 'books', 'theatre', 'gardening', 'vacations', 'work', 'education', 'health', 'computing', 'science', 'human rights']

10.times{Author.create(name: Faker::Book.author, genre: genres[rand(0..genres.length)], bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')}

15.times{Category.create(name: categories[rand(0...categories.length)])}

a = Author.all.first.id
z = Author.all.last.id

aa = Category.all.first.id
zz = Category.all.last.id

30.times{Post.create(title: Faker::Movies::HarryPotter.unique.location, description: Faker::Quote.unique.most_interesting_man_in_the_world, post_status: 'draft', author_id: rand(a..z), category_id: rand(aa..zz))}
