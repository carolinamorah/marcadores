# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Bookmark.destroy_all
Type.destroy_all
Category.destroy_all

status_array = [true, false]

20.times do Category.create(
    name: Faker::Company.industry,
    status: status_array.sample()
    )
end

10.times do 
    Category.find(rand(1..11)).update(category_id: rand(12..20))
end

5.times do  
    Type.create(name: Faker::Company.profession)
end


20.times do 
    Bookmark.create(
    name: Faker::Company.name,
    url: Faker::Internet.url,
    category_id: rand(1..10),
    type_id: rand(1..5)
)
end 