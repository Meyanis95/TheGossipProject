require 'faker'

10.times do
  User.create!(
    first_name: Faker::Name.first_name, 
    last_name:Faker::Name.last_name,
    decription: Faker::Lorem.sentence(word_count: 8, supplemental: true),
    email: Faker::Internet.email,
    age: Faker::Number.number(digits: 2))
end

10.times do 
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end 

20.times do 
  Gossip.create!(
    title: Faker::Artist.name,
    content: Faker::ChuckNorris.fact
  )
end

10.times do
  Tag.create!(
    title: Faker::Artist.name
  )
end

20.times do 
  PrivateMessage.create!(
    content: Faker::ChuckNorris.fact
  )
end