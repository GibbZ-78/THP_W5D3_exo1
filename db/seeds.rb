# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Using Seeds to populate my Movie table with 100 entries
100.times do
  tmp_fake_movie = Movie.create!(name: Faker::Movie.title, 
                                year: rand(1900..2020), 
                                genre: ["action", "horreur", "comédie", "drame"][rand(0..3)], 
                                synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 5),
                                director: Faker::Name.first_name+" "+Faker::Name.last_name.upcase,
                                allocine_rating: rand(0.0..5.0).round(1),
                                my_rating: rand(0..5),
                                already_seen: Faker::Boolean.boolean)
end
