# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
apple_varieties = [
  "gala",
  "empire",
  "golden delicious",
  "red delicious",
  "fuji",
  "cameo",
]

apple_varieties.each do |variety|
  apple = Apple.new(
    variety: variety,
    color: ["red", "green", "yellow"].sample,
    mass: rand(1..1000),  
  )
  apple.save

end