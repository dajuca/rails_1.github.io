# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do # génère aléatoirement 5 users
  user = User.create!(name: Faker::NewGirl.character)
end

25.times do # génère aléatoirement 25 posts
  post = Post.create!(user_id: Random.new.rand(1..User.count), title: Faker::RickAndMorty.quote)
end

10.times do # génère aléatoirement 10 commentaires
  comment = Comment.create!(post_id: Random.new.rand(1..Post.count), user_id: Random.new.rand(1..User.count), content: Faker::RickAndMorty.quote, rank: 1)
end

10.times do # génère aléatoirement 10 réponses aux commentaires
  answer = Answer.create!(comment_id: Random.new.rand(1..Comment.count), user_id: Random.new.rand(1..User.count), content: Faker::Simpsons.quote, rank: 2)
end
