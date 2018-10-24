# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Faites un rails db:reset qui permet de tout reset et de relancer des créations de tableaux

15.times do
    courses = Course.create!(name: Faker::ProgrammingLanguage.name, description: Faker::RickAndMorty.quote)
end

50.times do
    lessons = Lesson.create!(title: Faker::Zelda.location, body: Faker::Zelda.game, course_id: Random.new.rand(1..10))
end
