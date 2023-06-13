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
  email: 'harry@hogwarts.com',
  password: '123456',
  full_name: 'Harry Potter',
  user_name: 'harry'
)

user2 = User.create!(
  email: 'peter@neverland.com',
  password: '123456',
  full_name: 'Peter Pan',
  user_name: 'peter'
)

admin = User.create!(
  email: 'admin@neverland.com',
  password: '123456',
  full_name: 'Admin',
  user_name: 'admin',
  admin: true
)

Letter.create!(
  content: "Hi Peter! It was amazing the time that I spent with you in Never Land! I hope I will able to come back very soon, I'm afraid if I take too long I'll be to old for you guys :) Take care!",
  subject: 'Amazing never land!',
  user_id: user1.id,
  receiver_id: user2.id
)

Letter.create!(
  content: "Hi Peter, you're so incredibly good playing ping pong. I hope one day you can meet my friend Mateo who will crash you hard in a french way. Keep trainning and good luck!",
  subject: "Peter Pong vs Mateo",
  user_id: user1.id,
  receiver_id: user2.id
)

Letter.create!(
  content: "Dear Harry! I must confess that I have a profound admiration for you. I never saw anyone eating so many cookies. I hope one day I'll be able to do it as well. With respect, Peter",
  subject: "You're the best!",
  user_id: user2.id,
  receiver_id: user1.id
)
Letter.create!(
  content: "Hello Harry! I need to tell you how much I love your magic tricks. I just hope next time you don't make me a developer. All the best!",
  subject: "You are magic",
  user_id: user2.id,
  receiver_id: user1.id
)
