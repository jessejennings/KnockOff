require 'faker'


50.times do
  .create!(
    title: Faker::Lorem.sentence,
  )
end
posts = Post.all


50.times do 
  Comments.create!(
    title: Faker::Lorem.sentence,
  )  
end
items = Comment.all

puts "Seed Finished"
puts "#{Post.count} posts created"
puts "#{Comments.count} comments created"
