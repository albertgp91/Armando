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

user3 = User.create!(
  email: 'simpson@carton.com',
  password: '123456',
  full_name: 'Homer Simpson',
  user_name: 'homer'
)

user4 = User.create!(
  email: 'rogerrabbit@carton.com',
  password: '123456',
  full_name: 'Roger Rabbit',
  user_name: 'roger'
)

user5 = User.create!(
  email: 'jessicarabbit@carton.com',
  password: '123456',
  full_name: 'Jessica Rabbit',
  user_name: 'jessica'
)

user6 = User.create!(
  email: 'montereal@hotmail.com',
  password: '123456',
  full_name: 'Monte Real',
  user_name: 'monte'
)

user7 = User.create!(
  email: 'madreteresa@hotmail.com',
  password: '123456',
  full_name: 'Madre Teresa',
  user_name: 'teresa'
)

user8 = User.create!(
  email: 'matilde@hotmail.com',
  password: '123456',
  full_name: 'Matilde',
  user_name: 'matilde'
)

user9 = User.create!(
  email: 'monspell@hotmail.com',
  password: '123456',
  full_name: 'monspell',
  user_name: 'monspell'
)

user10 = User.create!(
  email: 'catarinamatilde@gmail.com',
  password: '123456',
  full_name: 'catarina matilde',
  user_name: 'catarina'
)
user11 = User.create!(
  email: 'mariaantonia@gmail.com',
  password: '123456',
  full_name: 'Maria Antonia',
  user_name: 'maria'
)

user12 = User.create!(
  email: 'robinwood@gmail.com',
  password: '123456',
  full_name: 'Robin Wood',
  user_name: 'Robin'
)

user13 = User.create!(
  email: 'miguelprofessor@gmail.com',
  password: '123456',
  full_name: 'Miguel Cantona',
  user_name: 'miguel'
)
user14 = User.create!(
  email: 'gabrielprofessor@gmail.com',
  password: '123456',
  full_name: 'Gabriel',
  user_name: 'gabriel'
)
user15 = User.create!(
  email: 'pigeonvans@gmail.com',
  password: '123456',
  full_name: 'Pigeon Vans',
  user_name: 'pigeon'
)
user16 = User.create!(
  email: 'grimaldo@gmail.com',
  password: '123456',
  full_name: 'Grimaldo Benfica',
  user_name: 'grimaldo'
)
user17 = User.create!(
  email: 'francinne@gmail.com',
  password: '123456',
  full_name: 'Francinne',
  user_name: 'francinne'
)
user18 = User.create!(
  email: 'ritafernandes@gmail.com',
  password: '123456',
  full_name: 'Rita Fernandes',
  user_name: 'rita'
)
user19 = User.create!(
  email: 'lello@gmail.com',
  password: '123456',
  full_name: 'Lello',
  user_name: 'lello'
)
user20 = User.create!(
  email: 'ana@wagon.com',
  password: '123456',
  full_name: 'Ana ',
  user_name: 'ana'
)
user21 = User.create!(
  email: 'betina@gmail.com',
  password: '123456',
  full_name: 'betina',
  user_name: 'betina'
)
user22 = User.create!(
  email: 'marinelepen@gmail.com',
  password: '123456',
  full_name: 'Marine le Pen',
  user_name: 'Marine'
)

puts "Creating letters..."
Letter.create!(
  content: "Hi Peter! It was amazing the time that I spent with you in Never Land! I hope I will able to come back very soon, I'm afraid if I take too long I'll be to old for you guys :) Take care!",
  subject: 'Amazing never land!',
  user: user1,
  receiver: user2
)

Letter.create!(
  content: "Hi Peter, you're so incredibly good playing ping pong. I hope one day you can meet my friend Mateo who will crash you hard in a french way. Keep trainning and good luck!",
  subject: "Peter Pong vs Mateo",
  user: user1,
  receiver: user2
)

Letter.create!(
  content: "Dear Harry! I must confess that I have a profound admiration for you. I never saw anyone eating so many cookies. I hope one day I'll be able to do it as well. With respect, Peter",
  subject: "You're the best!",
  user: user2,
  receiver: user1
)
Letter.create!(
  content: "Hello Antonia! I need to tell you how much I love your magic tricks. I just hope next time you don't make me a developer. All the best!",
  subject: "You are magic",
  user: user10,
  receiver: user11
)
Letter.create!(
  content: "Hey Ava, I just had to tell you how much I'm in awe of your dance moves. Your graceful performances are pure magic. Just a small favor to ask: please don't turn me into a dancing puppet next time! Keep spreading the joy through dance.",
  subject: "Enchanting Rhythms",
  user: user2,
  receiver: user1
)

Letter.create!(
  content: "Hey Marine! I wanted to express my admiration for your incredible artistry. Your paintings are simply enchanting. Just a small request: please don't turn me into a canvas next time! Take care!",
  subject: "Artistic Wonder",
  user: user20,
  receiver: user21
)

Letter.create!(
  content: "Dear Betina, I had to reach out and let you know how much I adore your musical talent. Your voice is like pure magic. Although, if you ever decide to use your powers to turn me into a singing sensation, I might have to reconsider! Warm regards.",
  subject: "Melodic Enchantment",
  user: user21,
  receiver: user20
)

Letter.create!(
  content: "Hi Rita, I couldn't resist writing to you to express my fascination with your cooking skills. Your culinary creations are absolutely spellbinding. Just one tiny request: no potion ingredients in my next meal, please! Best wishes.",
  subject: "Culinary Sorcery",
  user: user19,
  receiver: user17
)

Letter.create!(
  content: "Dear Grimaldo, I wanted to let you know how much I admire your writing prowess. Your words have the power to captivate and transport readers to magical worlds. Just a humble plea: don't turn my life into a never-ending novel! Stay magical.",
  subject: "Literary Wizardry",
  user: user16,
  receiver: user15
)

Letter.create!(
  content: "Hello Gabriel, I couldn't resist sending you this message to express my awe for your athletic abilities. Your skills on the field are nothing short of magical. Just a small favor to ask: don't turn me into a soccer ball next time! All the best.",
  subject: "Sports Sorcery",
  user: user12,
  receiver: user13
)

Letter.create!(
  content: "Hey Miguel, I couldn't let another day pass without telling you how much I love your fashion sense. Your style is simply enchanting. Just a tiny request: no spells to change my wardrobe, please! Take care and stay stylish.",
  subject: "Fashion Magic",
  user: user13,
  receiver: user12
)

Letter.create!(
  content: "Dear Monspell, I had to reach out and tell you how much I adore your photography skills. Your pictures have a magical quality to them. Just a small plea: no disappearing acts during our next photoshoot! Warm regards.",
  subject: "Photographic Sorcery",
  user: user8,
  receiver: user9
)

Letter.create!(
  content: "Hi Pigeon, I wanted to express my fascination with your gardening expertise. Your green thumb truly works wonders. Just a small favor to ask: please don't turn me into a potted plant! Best wishes for your magical garden.",
  subject: "Botanical Enchantment",
  user: user14,
  receiver: user15
)

Letter.create!(
  content: "Hello Gabriel, I couldn't resist reaching out to let you know how much I admire your coding skills. Your programming prowess is truly magical. Just a humble request: no debugging spells on my next project! All the best in your coding adventures.",
  subject: "Coding Magic",
  user: user15,
  receiver: user14
)
Letter.create!(
  content: "Dear Catarina, I couldn't resist reaching out to express my admiration for your filmmaking skills. Your creations are truly mesmerizing. Just a small plea: no special effects that involve turning me into a movie character! Best wishes in your cinematic journey.",
  subject: "Cinematic Enchantment",
  user: user11,
  receiver: user10
)

Letter.create!(
  content: "Hi Madre Teresa, I wanted to let you know how much I adore your leadership skills. Your ability to inspire and guide others is truly magical. Just a small request: no wand-waving during our next team meeting! Best regards in your leadership endeavors.",
  subject: "Leadership Magic",
  user: user8,
  receiver: user9
)

Letter.create!(
  content: "Hello Robin Wood, I couldn't let another day go by without telling you how much I love your guitar playing. Your music has a magical touch to it. Just a small favor to ask: no disappearing acts during our next jam session! Keep rocking on.",
  subject: "Musical Sorcery",
  user: user13,
  receiver: user12
)

Letter.create!(
  content: "Hey Roger Rabbit, I had to write and express my fascination with your photography skills. Your captured moments have an enchanting quality. Just a small plea: no turning me into a photograph! Warm regards and keep capturing the magic.",
  subject: "Photographic Magic",
  user: user6,
  receiver: user5
)

Letter.create!(
  content: "Dear Monte Real, I wanted to reach out and let you know how much I admire your chess skills. Your strategic moves are like wizardry. Just a humble request: no casting spells on the chessboard during our next match! Best wishes in your chess adventures.",
  subject: "Chess Wizardry",
  user: user5,
  receiver: user6
)

Letter.create!(
  content: "Hi Homer, I couldn't resist sending you this message to express my awe for your baking talents. Your creations are pure magic for the taste buds. Just a small favor to ask: please don't turn me into a gingerbread cookie next time! Keep baking up wonders.",
  subject: "Baking Enchantment",
  user: user4,
  receiver: user3
)

Letter.create!(
  content: "Hello Roger Rabbit, I had to reach out and tell you how much I love your magic shows. Your tricks are truly captivating. Just a small plea: no turning me into a rabbit during your next performance! Warm regards and keep the magic alive.",
  subject: "Captivating Illusions",
  user: user3,
  receiver: user4
)

Letter.create!(
  content: "Hey Betina, I wanted to express my fascination with your writing skills. Your stories have a magical quality that transports readers. Just a small request: no casting spells on my next writing project! Best wishes in your literary journey.",
  subject: "Literary Magic",
  user: user20,
  receiver: user21
)

Letter.create!(
  content: "Dear Ana, I couldn't resist writing to you to express my admiration for your painting talents. Your artwork is simply enchanting. Just a small favor to ask: no turning me into a living painting! Warm regards and keep painting the magic.",
  subject: "Artistic Sorcery",
  user: user21,
  receiver: user20
)
