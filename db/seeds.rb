# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Article.create!(title: Faker::Pokemon.name, content: Faker::Lorem.sentence, user_id: rand(1..10))
end

10.times do
  User.create!(first_name: Faker::Overwatch.hero, last_name: Faker::Overwatch.location, email: Faker::Internet.email)
end

5.times do
  Category.create!(name: Faker::Cat.name)
end

Article.all.each do |article| # ajoute une category_id à chaque article
  article.update(category_id: rand(1..5))
 end

15.times do
  Comment.create!(content: Faker::Lorem.sentence, article_id: rand(1..11), user_id: rand(1..11))
end

15.times do
  Like.create!(article_id: rand(1..11), user_id: rand(1..11))
end