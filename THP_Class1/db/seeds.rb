# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


#Array contenant le nom des classes que l'ont veut creer, etant peut nombreuses
classes = ["Sixième", "Cinquième", "Quatrième", "Troisième"]

#On utilise each do pour creer une classe pour chaque element de notre array.
classes.each do |sc|
  cl = SchoolClass.create!(name: sc)
end

#On creer ici 100 eleves, leur noms et prénoms sont donc généré au hasard en utilisant faker, et leur classe leur est attitré aussi au hasard grance a la fonction random parmis les 4 classes existantes.
100.times do
  student = Student.create!(first_name: Faker::Hobbit.character, last_name: Faker::Hobbit.quote, school_class_id: Random.new.rand(1..4))
end
