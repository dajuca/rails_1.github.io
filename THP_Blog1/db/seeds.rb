# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#(/!\(Ne pas lancer rails db:seed mais rails db:reset pour tout relancer à 0 ;)

10.times do
    user=User.create!(first_name: Faker::Name.first_name, last_name: Faker::Overwatch.hero, email: Faker::Internet.email)
end


5.times do
    category=Category.create!(name: Faker::Overwatch.location)
end



15.times do
    article=Article.create!(title: Faker::Book.title, content: Faker::Lorem.sentence, user_id: Random.rand(1..10), category_id: Random.rand(1..5))
end



15.times do
    comments=Comment.create!(content: Faker::Lorem.sentence, user_id: Random.rand(1..10), article_id: Random.rand(1..15))
end

50.times do
    likes=Like.create!(article_id: Random.rand(1..15), user_id: Random.rand(1..10))
end
