require 'faker'

3.times do
  user = User.new(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save
end

users = User.all 

10.times do
  Item.create(name: Faker::Lorem.sentence, user: users.sample)
end

items = Item.all

puts "#{users.count} users created"
puts "#{items.count} items created"
