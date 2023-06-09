# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning DB..."
Letter.destroy_all
puts "Letters deleted"
User.destroy_all
puts "Users deleted"

user1 = User.create!(
  email: 'user1@example.com',
  password: '123456',
  full_name: 'Harry Potter',
  user_name: 'harry'
)

user2 = User.create!(
  email: 'user2@example.com',
  password: '123456',
  full_name: 'Justin Bibber',
  user_name: 'justin'
)


Letter.create!(
  content: 'Hi Matilde! It was very nice to meet you in the summer camp!',
  subject: 'Summer camp',
  user_id: user1.id,
  receiver_id: user2.id
)

Letter.create!(
  content: 'Hello John! I wanted to ask you if you will go to the event next month?',
  subject: 'Next event',
  user_id: user2.id,
  receiver_id: user1.id
)
Letter.create!(
  content: 'Hi John! I just wanted to say Merry Christmas!',
  subject: 'Merry Christmas',
  user_id: user2.id,
  receiver_id: user1.id
)
Letter.create!(
  content: 'Hello Matilde! I wanted to ask you how were your holidays?',
  subject: 'Holidays',
  user_id: user1.id,
  receiver_id: user2.id
)
