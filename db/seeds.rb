# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Letter.destroy_all
User.destroy_all

user1 = User.create!(
  email: 'user1@example.com',
  password: '123456',
  full_name: 'User One',
  user_name: 'user1'
)

user2 = User.create!(
  email: 'user2@example.com',
  password: '123456',
  full_name: 'User Two',
  user_name: 'user2'
)


Letter.create!(
  content: 'Letter 1 content',
  subject: 'Letter 1 subject',
  user_id: user1.id,
  receiver_id: user2.id
)

Letter.create!(
  content: 'Letter 2 content',
  subject: 'Letter 2 subject',
  user_id: user2.id,
  receiver_id: user1.id
)
Letter.create!(
  content: 'Letter 3 content',
  subject: 'Letter 3 subject',
  user_id: user2.id,
  receiver_id: user1.id
)
Letter.create!(
  content: 'Letter 4 content',
  subject: 'Letter 4 subject',
  user_id: user1.id,
  receiver_id: user2.id
)
