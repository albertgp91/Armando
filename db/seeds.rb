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
randomizer = ('a'..'z').to_a

puts "Creating users..."
user1 = User.create!(
  email: 'miguel@neverland.com',
  password: '123456',
  full_name: 'Miguelinho',
  user_name: 'miguel',
  comkey: 1111,
)
file = URI.open("miguel.jpg")
goat_1.avatar_file.attach(io: file, filename: "miguel.jpeg", content_type: "image/jpeg")
goat_1.save

user2 = User.create!(
  email: 'fabien@neverland.com',
  password: '123456',
  full_name: 'Fabien',
  user_name: 'wolfwallstreet',
  comkey: 1111
)
file = URI.open("fabien.jpg")
goat_1.avatar_file.attach(io: file, filename: "fabien.jpeg", content_type: "image/jpeg")
goat_1.save

user3 = User.create!(
  email: 'ana@neverland.com',
  password: '123456',
  full_name: 'Anna',
  user_name: 'hermione',
  comkey: 1111,
  admin: true
)
file = URI.open("anna.jpg")
goat_1.avatar_file.attach(io: file, filename: "ana.jpeg", content_type: "image/jpeg")
goat_1.save

user4 = User.create!(
  email: 'margarita@neverland.com',
  password: '123456',
  full_name: 'Margarita',
  user_name: 'misskindness',
  comkey: 1111
)
file = URI.open("margarita.jpg")
goat_1.avatar_file.attach(io: file, filename: "margarita.jpeg", content_type: "image/jpeg")
goat_1.save

user5 = User.create!(
  email: 'cris@neverland.com',
  password: '123456',
  full_name: 'Cris',
  user_name: 'cowboy',
  comkey: 1111
)
file = URI.open("cris.jpg")
goat_1.avatar_file.attach(io: file, filename: "cris.jpeg", content_type: "image/jpeg")
goat_1.save

user6 = User.create!(
  email: 'alfredo@neverland.com',
  password: '123456',
  full_name: 'Alfredo',
  user_name: 'pingpongmaster',
  comkey: 1111
)
file = URI.open("alfredo.jpg")
goat_1.avatar_file.attach(io: file, filename: "alfredo.jpeg", content_type: "image/jpeg")
goat_1.save

user7 = User.create!(
  email: 'mateo@neverland.com',
  password: '123456',
  full_name: 'Mateo',
  user_name: 'cheeselover',
  comkey: 1111
)
file = URI.open("mateo.jpg")
goat_1.avatar_file.attach(io: file, filename: "mateo.jpeg", content_type: "image/jpeg")
goat_1.save


puts "Creating letters..."
Letter.create!(
  content: "I'll miss you! It was amazing the time that I spent with you in Never Land! I hope I will able to come back very soon, I'm afraid if I take too long I'll be to old for you guys :) Take care!",
  subject: 'Amazing never land!',
  user: user7,
  receiver: user1,
  delivered: true
)

Letter.create!(
  content: "Miguelinho, you're so incredibly good playing ping pong. I hope one day you can meet my friend Mateo who will crash you hard in a french way. Keep trainning and good luck!",
  subject: "Peter Pong vs Mateo",
  user: user6,
  receiver: user1,
  delivered: true
)

Letter.create!(
  content: "Hi Miguel! I must confess that I have a profound admiration for you. I never saw anyone eating so many cookies. I hope one day I'll be able to do it as well. With respect, Peter",
  subject: "You're the best!",
  user: user5,
  receiver: user1,
  delivered: true
)
Letter.create!(
  content: "Hello Miguel! I need to tell you how much I love your magic tricks. I just hope next time you don't make me a developer. All the best!",
  subject: "You are magic",
  user: user4,
  receiver: user1,
  delivered: true
)

Letter.create!(
  content: "Hey Mateo! I just had to tell you how much I'm in awe of your dance moves. Your graceful performances are pure magic. Just a small favor to ask: please don't turn me into a dancing puppet next time! Keep spreading the joy through dance.",
  subject: "Enchanting Rhythms",
  user: user1,
  receiver: user7,
  delivered: true
)

Letter.create!(
  content: "Hey Alfredo! I wanted to express my admiration for your incredible artistry. Your paintings are simply enchanting. Just a small request: please don't turn me into a canvas next time! Take care!",
  subject: "Artistic Wonder",
  user: user1,
  receiver: user6,
  delivered: true
)

Letter.create!(
  content: "Dear Cris, I had to reach out and let you know how much I adore your musical talent. Your voice is like pure magic. Although, if you ever decide to use your powers to turn me into a singing sensation, I might have to reconsider! Warm regards.",
  subject: "Melodic Enchantment",
  user: user1,
  receiver: user5,
  delivered: true
)

Letter.create!(
  content: "Hi Margarita, I couldn't resist writing to you to express my fascination with your cooking skills. Your culinary creations are absolutely spellbinding. Just one tiny request: no potion ingredients in my next meal, please! Best wishes.",
  subject: "Culinary Sorcery",
  user: user1,
  receiver: user4,
  delivered: true
)

Letter.create!(
  content: "Dear Mateo, I wanted to let you know how much I admire your writing prowess. Your words have the power to captivate and transport readers to magical worlds. Just a humble plea: don't turn my life into a never-ending novel! Stay magical.",
  subject: "Literary Wizardry",
  user: user1,
  receiver: user7,
  delivered: true
)
