Comment.destroy_all
Pokemon.destroy_all
User.destroy_all

nico = User.create!(email: "nico@gmail.com", password: "password")
sy = User.create!(email: "sy@gmail.com", password: "password")
commenter = User.create!(email: "commenter@gmail.com", password: "password")

Pokemon.create!(name: "Pikachu", location: "Forest", user: nico)
Pokemon.create!(name: "Charmander", location: "Volcano", user: nico)
Pokemon.create!(name: "Bulbasaur", location: "Ocean", user: nico)
Pokemon.create!(name: "Psyduck", location: "Bathroom", user: sy)

contents = [
  "Best pokemon ever!",
  "This pokemon sucks",
  "Could be better, could be worst",
  "Is this actually a pokemon?"
]

Pokemon.all.each do |pokemon|
  contents.each do |content|
    Comment.create!(user: commenter, pokemon: pokemon, content: content)
  end
end