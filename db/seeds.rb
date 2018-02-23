# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Piece.destroy_all

Piece.create(artist: 'Voyer', image_url: 'https://i.imgur.com/XIcKTav.jpg', neighborhood: 'U Street Corridor', lat: 38.914081, lng: -77.032639)
Piece.create(artist: 'Mizta', image_url: 'https://i.imgur.com/0RBg1Gx.jpg', neighborhood: 'Union Market', lat: 38.907207, lng: -76.999540)
