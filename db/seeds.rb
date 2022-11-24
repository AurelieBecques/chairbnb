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
file = File.open("db/fixtures/images/avatar/Aurelie.jpg")
aurelie = User.new(first_name: "Aurélie", last_name: "Becques", email: "aurelie@me.com", password: "123456")
aurelie.photo.attach(io: file, filename: "Aurelie.jpg", content_type: "image/jpg")
aurelie.save!
file = File.open("db/fixtures/images/avatar/Rodolphe.jpg")
rodolphe = User.new(first_name: "Rodolphe", last_name: "Junker", email: "rodolphe@me.com", password: "123456")
rodolphe.photo.attach(io: file, filename: "Rodolphe.jpg", content_type: "image/jpg")
rodolphe.save!
file = File.open("db/fixtures/images/avatar/Matthieu.jpg")
matthieu = User.new(first_name: "Matthieu", last_name: "Nourry", email: "matthieu@me.com", password: "123456")
matthieu.photo.attach(io: file, filename: "Matthieu.jpg", content_type: "image/jpg")
matthieu.save!
file = File.open("db/fixtures/images/avatar/Corinne.jpg")
corinne = User.new(first_name: "Corinne", last_name: "Poree", email: "corinne@me.com", password: "123456")
corinne.photo.attach(io: file, filename: "Corinne.jpg", content_type: "image/jpg")
corinne.save!

puts "Creating chairs..."
# Créer une nouvelle chaise
# Lui attribuer une image
# Lui attribuer un propriétaire
# LA sauver
file = File.open("db/fixtures/images/chairs/alone.jpg")
chair_alone = Chair.new(name: "alone",
                  user: aurelie,
                  description: "La Chaise ALONE s'utilise pour la salle à manger,
                   en Bois et Acier Ticher est une pièce polyvalente et une référence
                   dans toutes les décorations. L'assise et le dossier sont en contreplaqué
                   stratifié et sa structure est en acier. Usage intérieur exclusif,
                   parfait pour la salle à manger, la cuisine, les salons ou tout autre coin de la maison.
                   Conseils : Pour le nettoyage, utilisez un chiffon en évitant l'utilisation de produits chimiques.",
                  address: "29 route de Kerchican, 56400 Pluneret",
                  rating: 3,
                  price_per_day: 30)
chair_alone.photo.attach(io: file, filename: "alone.jpg", content_type: "image/jpg")
chair_alone.save!

file = File.open("db/fixtures/images/chairs/armchair_orange.jpg")
chair_armchair_orange = Chair.new(name: "armchair_orange",
                  user: aurelie,
                  description: "Le Fauteuil avec Accoudoirs en Velours au style vintage
                  apportera de la chaleur à vos pièces et sera le protagoniste de votre salon ou de la pièce où vous le placerez.
                  Il attirera instantanément l'attention de vos invités. La couleur lui donnera une élégance unique.
                  Son tissu en velours est très doux ce qui rendra vos moments de détente très confortables. Les pieds sont en bois
                  Conseils : Pour le nettoyer, utilisez une brosse à poils doux pour enlever la poussière et la saleté tenaces, toujours avec de l'eau froide
                  et un détergent sans produits chimiques, à l'aide d'un chiffon doux. Utilisation intérieure exclusive. ",
                  address: "29 route de Kerchican, 56400 Pluneret",
                  rating: 4,
                  price_per_day: 80)
chair_armchair_orange.photo.attach(io: file, filename: "armchair_orange.jpg", content_type: "image/jpg")
chair_armchair_orange.save!

file = File.open("db/fixtures/images/chairs/black.jpg")
chair_black = Chair.new(name: "black",
                  user: rodolphe,
                  description: "Chaise de salle à manger très confortable. Pieds et assise en polypropylène.
                  Idéale pour ajouter une touche unique à votre salon ou salle à manger à la maison. Elle peut également devenir la chaise parfaite pour votre bar,
                  restaurant ou café. Assise forment très confortable. Le coussin est en similicuir. Coussin non amovible. Convient pour une utilisation en intérieur.
                  Chaise de salle à manger très confortable. Pieds et assise en polypropylène. Idéale pour ajouter une touche unique à votre salon ou salle à manger à la maison. 
                  Le dossier et l'assise forment une seule pièce de polypropylène. Comprend un coussin, selon la couleur, le coussin est en similicuir ou en tissu. Coussin non amovible. Convient pour une utilisation en intérieur..",
                  address: "Pool du Mabilais, 2 rue du Mabilais, 35000 Rennes",
                  rating: 2,
                  price_per_day: 60)
chair_black.photo.attach(io: file, filename: "black.jpg", content_type: "image/jpg")
chair_black.save!

file = File.open("db/fixtures/images/chairs/harpe.jpg")
chair_harpe = Chair.new(name: "harpe",
                  user: rodolphe,
                  description: "La Chaise d'Intérieur en Bois Naturel est le meuble idéal pour votre décoration. Avec un style boho-chic,
                  cette chaise est une pièce design unique. Ses pieds en bois ont un design original et différent qui se combine parfaitement
                  avec ses accoudoirs. Cette chaise s'intégrera parfaitement dans des pièces aux autres styles décoratifs, comme nordique
                  ou même rustique.
                  Conseils : utilisation uniquement à l'intérieur.",
                  address: "Pool du Mabilais, 2 rue du Mabilais, 35000 Rennes",
                  rating: 5,
                  price_per_day: 150)
chair_harpe.photo.attach(io: file, filename: "harpe.jpg", content_type: "image/jpg")
chair_harpe.save!

file = File.open("db/fixtures/images/chairs/lawrenceville.jpg")
chair_lawrenceville = Chair.new(name: "lawrenceville",
                  user: rodolphe,
                  description: "Hyper chic, cette Chaise d'Intérieur en velours rouge est le meuble idéal pour votre décoration. Avec un style chic,
                  cette chaise est une pièce design unique. Ses pieds en bois ont un design original. Cette chaise s'intégrera parfaitement dans des
                  pièces aux autres styles décoratifs, comme nordique ou même rustique.
                  Conseils : utilisation uniquement à l'intérieur.",
                  address: "Pool du Mabilais, 2 rue du Mabilais, 35000 Rennes",
                  rating: 2,
                  price_per_day: 60)
chair_lawrenceville.photo.attach(io: file, filename: "lawrenville.jpg", content_type: "image/jpg")
chair_lawrenceville.save!

file = File.open("db/fixtures/images/chairs/lawrenceville.jpg")
chair_rodin = Chair.new(name: "rodin",
                  user: rodolphe,
                  description: "La Chaise Rodin est de style nordique, une tendance à la hausse ces dernières années. Son design est minimaliste et de forme souple,
                  l'assise en polyuréthane se combine parfaitement avec les pieds en bois. Elle conviendra parfaitement aux décorations modernes et vintage. Idéal
                  pour les terrasses couvertes.
                  Conseils : Nous vous conseillons de la nettoyer avec un chiffon humide sans utiliser de produits chimiques.
                  Le polypropylène est travaillé avec un moule, elle peut présenter de petites imperfections mais la qualité de la chaise n'est pas altérée.
                  Convient pour une utilisation en intérieur et en extérieur, bien que nous recommandons de la protéger des phénomènes atmosphériques pour augmenter sa durabilité, car ses pieds sont en bois.",
                  address: "Pool du Mabilais, 2 rue du Mabilais, 35000 Rennes",
                  rating: 4,
                  price_per_day: 30)
chair_rodin.photo.attach(io: file, filename: "rodin.jpg", content_type: "image/jpg")
chair_rodin.save!

file = File.open("db/fixtures/images/chairs/coachella.jpg")
chair_coachella = Chair.new(name: "coachella",
                  user: corinne,
                  description: "La Chaise de Salle à Manger en Polypropylène et Bois Fine Freya possède des pieds robustes en bois de hêtre.
                  Supporte un poids maximum de 130 kg. Chaises parfaites pour la salle à manger, le bar, le restaurant ou la cafétéria.
                  Fabriquée en polypropylène. Le polypropylène est travaillé avec un moule, il peut présenter de petites imperfections dans celui-ci, mais
                  cela n'altère pas sa qualité. Utilisation exclusive à l'intérieur.",
                  address: "2 rue du Tigre, 57360 Hagondange",
                  rating: 5,
                  price_per_day: 150)
chair_coachella.photo.attach(io: file, filename: "coachella.jpg", content_type: "image/jpg")
chair_coachella.save!

file = File.open("db/fixtures/images/chairs/edison.jpg")
chair_edison = Chair.new(name: "edison",
                  user: corinne,
                  description: "Le Fauteuil avec ses Accoudoirs en bois se distingue par son confort et son design.
                  Grâce à ses couleurs, il est parfait pour donner une touche de couleur à vos pièces. Il est fabriqué en boix authentique,
                  de tissu doux. Son tissu en velours est très doux ce qui rendra vos moments de détente très confortables.
                  Ses accoudoirs sont très originaux ainsi que confortables, ce fauteuil est donc idéal pour passer un bon moment de détente ou avec un bon livre.
                  Combinez-le avec nos tapis design, un canapé et un lampadaire et profitez de votre salon.",
                  address: "2 rue du Tigre, 57360 Hagondange",
                  rating: 3,
                  price_per_day: 150)
chair_edison.photo.attach(io: file, filename: "edison.jpg", content_type: "image/jpg")
chair_edison.save!

file = File.open("db/fixtures/images/chairs/white_curl.jpg")
chair_white_curl = Chair.new(name: "white_curl",
                  user: corinne,
                  description: "La Chaise de Salon en Tissu velours blanc, possède des pieds très originaux robustes en bois de hêtre blanc.
                  Elle est recouverte d'un tissu en polyester en velour, très doux au toucher. En plus d'être tendance, son confort et sa douceur en font un incontournable de la saison qui apportera chaleur et style à vos pièces. Une chaise design pour renouveler votre décoration qui convient au salon, à la salle à manger, au bureau ou aux chambres. Pour un bon entretien et une bonne durabilité du tissu, nettoyez-le à l'aide d'un chiffon blanc sec sur sa surface, ou si nécessaire humidifiez-le avec de l'eau tiède et du savon neutre, en évitant l'utilisation de produits chimiques..",
                  address: "2 rue du Tigre, 57360 Hagondange",
                  rating: 3,
                  price_per_day: 150)
chair_white_curl.photo.attach(io: file, filename: "white_curl.jpg", content_type: "image/jpg")
chair_white_curl.save!

file = File.open("db/fixtures/images/chairs/edison.jpg")
chair_playa = Chair.new(name: "playa",
                  user: matthieu,
                  description: "Le Fauteuil en Velours Penta d'inspiration rétro et vintage est très confortable grâce à sa forme qui s'adaptera parfaitement à votre dos.
                  Le fauteuil est recouvert d'un tissu en coton de soie (velours). Ses pieds en bois lui confèrent une touche élégante et originale.
                  Vous aurez un fauteuil idéal pour n'importe quelle pièce de la maison, même dans les hôtels ou les salles d'attente des bureaux sera parfait.
                  Conseils: Pour le nettoyer, utilisez une brosse à poils doux pour enlever la poussière et la saleté incrustée, toujours avec de l'eau froide et un détergent sans produits chimiques,
                  à l'aide d'un chiffon doux. Utilisation intérieure uniquement.",
                  address: "8 rue de Marseille, 33000 Bordeaux",
                  rating: 2,
                  price_per_day: 150)
chair_playa.photo.attach(io: file, filename: "playa.jpg", content_type: "image/jpg")
chair_playa.save!

file = File.open("db/fixtures/images/chairs/edison.jpg")
chair_sea_view = Chair.new(name: "sea_view",
                  user: matthieu,
                  description: "La Chaise d'extérieur en Polypropylène peinte à la main de façon hétérogène en couleur bleue, peut
                  supporter un poids maximum de 100 kg. Chaises parfaites pour les fêtes, le bar, le restaurant ou la cafétéria.
                  Fabriquée en polypropylène. Le polypropylène est travaillé avec un moule, il peut présenter de petites imperfections dans celui-ci, mais
                  cela n'altère pas sa qualité. Utilisation intérieur et extérieur",
                  address: "8 rue de Marseille, 33000 Bordeaux",
                  rating: 1,
                  price_per_day: 10)
chair_sea_view.photo.attach(io: file, filename: "sea_view.jpg", content_type: "image/jpg")
chair_sea_view.save!

file = File.open("db/fixtures/images/chairs/orange.jpg")
chair_orange = Chair.new(name: "orange",
                  user: matthieu,
                  description: "Vous cherchez une Chaise Originale pour votre maison, cette Chaise en Polypropylène
                  orange au design chic, peut supporter un poids maximum de 200 kg. Il s'agit d'un matériau durable et facile à
                  nettoyer contre les éventuels renversements de liquides ou autres. Elle peut également être utilisée à l'extérieur,
                  sur les terrasses ou dans les jardins. Une chaise qui ne passe pas inaperçue ! Le polypropylène est travaillé avec un moule,
                  qui peut présenter de petites imperfections. Mais cela n'affectera pas pour autant la qualité de la chaise.
                  Conseils : Pour conserver le matériau plus longtemps, protéger la chaise des phénomènes atmosphériques.",
                  address: "8 rue de Marseille, 33000 Bordeaux",
                  rating: 4,
                  price_per_day: 70)
chair_orange.photo.attach(io: file, filename: "orange.jpg", content_type: "image/jpg")
chair_orange.save!
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save

# Corinne/Rodolphe réserve une chaise d'Aurelie (coachella et armchair_orange)
Booking.create!(
  start_time: Time.now + 3.days,
  end_time: Time.now + 6.days,
  total_price: 90,
  status: "pending",
  chair: chair_alone,
  user: corinne
)

Booking.create!(
  start_time: Time.now - 7.days,
  end_time: Time.now - 4.days,
  total_price: 240,
  status: "validated",
  chair: chair_armchair_orange,
  user: rodolphe
)

Booking.create!(
  start_time: Time.now - 1.days,
  end_time: Time.now,
  total_price: 30,
  status: "validated",
  chair: chair_alone,
  user: matthieu
)

# Matthieu loue une chaise de Rodolphe (rodin)
Booking.create!(
  start_time: Time.now,
  end_time: Time.now + 2.days,
  total_price: 60,
  status: "pending",
  chair: chair_rodin,
  user: matthieu
)

# Aurelie loue une chaise de Corinne (coachella)
Booking.create!(
  start_time: Time.now + 2.days,
  end_time: Time.now + 9.days,
  total_price: 1050,
  status: "validated",
  chair: chair_coachella,
  user: aurelie
)
