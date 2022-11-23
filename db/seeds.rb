# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

puts "Cleaning database"
Booking.destroy_all
Chair.destroy_all
User.destroy_all


puts "Creating users..."
file = File.open("db/fixtures/images/aurelie_avatar.jpg")
aurelie = User.new(first_name: "Aurélie", last_name: "Becques", email: "aurelie@me.com", password: "123456")
aurelie.photo.attach(io: file, filename: "aurelie_avatar.jpg", content_type: "image/jpg")
aurelie.save!
file = File.open("db/fixtures/images/rodolphe_avatar.jpg")
rodolphe = User.new(first_name: "Rodolphe", last_name: "Junker", email: "rodolphe@me.com", password: "123456")
rodolphe.photo.attach(io: file, filename: "rodolphe_avatar.jpg", content_type: "image/jpg")
rodolphe.save!
file = File.open("db/fixtures/images/matthieu_avatar.jpg")
matthieu = User.new(first_name: "Matthieu", last_name: "Nourry", email: "matthieu@me.com", password: "123456")
matthieu.photo.attach(io: file, filename: "matthieu_avatar.jpg", content_type: "image/jpg")
matthieu.save!
file = File.open("db/fixtures/images/corinne_avatar.jpg")
corinne = User.new(first_name: "Corinne", last_name: "Poree", email: "corinne@me.com", password: "123456")
corinne.photo.attach(io: file, filename: "corinne_avatar.jpg", content_type: "image/jpg")
corinne.save!

puts "Creating chairs..."
# Créer une nouvelle chaise
# Lui attribuer une image
# Lui attribuer un propriétaire
# LA sauver
file = File.open("db/fixtures/images/hipster.png")
chair_hip = Chair.new(name: "hipster",
                  user: aurelie,
                  description: "Our Hipster Chair will give a cool and stylish edge to any home or commercial environment.
                  With its clear lines and superb veneer-finished back, this handsome chair would fit perfectly into
                   any living environment or coffee
                  and restaurant space.
                  It will also fit elegantly into any modern setting and add style and structure to any contemporary space.",
                  address: "Place de la Montagne, 56100 Lorient",
                  rating: 3,
                  price_per_day: 30)
chair_hip.photo.attach(io: file, filename: "hipster.png", content_type: "image/png")
chair_hip.save!

file = File.open("db/fixtures/images/pool.png")
chair_pool = Chair.new(name: "pool",
                  user: aurelie,
                  description: "Ce superbe combo vous permettra de siroter un cocktail avec votre buddy les pieds dans l'eau",
                  address: "Pool du Mabilais, 2 rue du Mabilais, 35000 Rennes",
                  rating: 4,
                  price_per_day: 30)
chair_pool.photo.attach(io: file, filename: "pool.png", content_type: "image/png")
chair_pool.save!

file = File.open("db/fixtures/images/petasse.jpg")
chair_rodolphe = Chair.new(name: "petasse",
                  user: rodolphe,
                  description: "Cette élégante chaise (jeune femme sensuelle en option sur demande)
                   à la mode sera accueillir confortablement vos grosses fesses. Chaise de couleur noire
                  (et si ça vous intéresse la fille est vêtue d'une veste en cuir de style hipster
                     avec des lunettes de soleil). Les pieds sont en bois.",
                  address: "11 rue Jules Verne, 95600 EAUBONNE",
                  rating: 5,
                  price_per_day: 350)
chair_rodolphe.photo.attach(io: file, filename: "petasse.jpg", content_type: "image/jpg")
chair_rodolphe.save!

file = File.open("db/fixtures/images/western.png")
chair_western = Chair.new(name: "western",
                  user: corinne,
                  description: "Create a cozy and comfortable seating arrangement with our Western Rocking Chair.
                  This traditional styled chair looks great with any of our western or lodge décor",
                  address: "2 rue du Tigre, 57360 Hagondange",
                  rating: 2,
                  price_per_day: 150)
chair_western.photo.attach(io: file, filename: "western.png", content_type: "image/png")
chair_western.save!
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save


# Les réservations des chaises d'Aurelie (hip et pool)
Booking.create!(
  start_time: Time.now + 3.days,
  end_time: Time.now + 6.days,
  total_price: 90,
  status: "pending",
  chair: chair_hip,
  user: corinne
)

Booking.create!(
  start_time: Time.now - 7.days,
  end_time: Time.now - 4.days,
  total_price: 90,
  status: "validate",
  chair: chair_hip,
  user: rodolphe
)

Booking.create!(
  start_time: Time.now - 1.days,
  end_time: Time.now,
  total_price: 30,
  status: "denied",
  chair: chair_pool,
  user: matthieu
)

# Matthieu loue la chaise pétasse de Rodolphe
Booking.create!(
  start_time: Time.now,
  end_time: Time.now + 2.days,
  total_price: 700,
  status: "pending",
  chair: chair_rodolphe,
  user: matthieu
)

# Aurelie loue la chaise western de Corinne
Booking.create!(
  start_time: Time.now + 2.days,
  end_time: Time.now + 9.days,
  total_price: 1050,
  status: "accepted",
  chair: chair_western,
  user: aurelie
)
