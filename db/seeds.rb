# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Effacer les données existantes
Gossip.destroy_all
User.destroy_all
City.destroy_all


# Créer 10 villes
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

# Créer 10 utilisateurs et les lier à une ville
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph,
    email: Faker::Internet.email,
    age: rand(18..70),
    city: City.all.sample # Associer un utilisateur à une ville aléatoire
  )
end



# Créer 20 gossips et les lier à un utilisateur et à des tags
20.times do
  gossip = Gossip.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.paragraph,
    user: User.all.sample # Associer un gossip à un utilisateur aléatoire
  )
end

puts "Database successfully seeded!"
