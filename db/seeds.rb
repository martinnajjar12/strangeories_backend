# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

story = Story.create!(title: 'Hello World!', author: 'Martin Najjar', image_url: 'https://images-na.ssl-images-amazon.com/images/I/91ooh7V7opL.jpg', description: 'This story is seeded from the development')

like = Like.create!(count: 1, story_id: 1)
