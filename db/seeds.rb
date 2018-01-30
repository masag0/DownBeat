# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "guest", email: "guest@example.com", password: "password")
User.create(username: "candra", email: "candratran@gmail.com", password: "password")
User.create(username: "eddy", email: "edwinshin@gmail.com", password: "password")

Artist.create(name: "Snarky Puppy", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png')
Artist.create(name: "Snarky Puppy 2", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png')
Artist.create(name: "Snarky Puppy 3", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png')
Artist.create(name: "Snarky Puppy 4", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png')
Artist.create(name: "Hiatus Kaiyote", genre: "Jazz", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/media/hiatus-kaiyote-press-2014-billboard-650.jpg')
Artist.create(name: "Moonchild", genre: "Jazz", img_url: 'https://f4.bcbits.com/img/0009860726_10.jpg')
Artist.create(name: "John mayer", genre: "Pop", img_url: 'https://www.billboard.com/files/media/john-mayer-aug-2017-billboard-1548.jpg')

Album.create(title: "We Like It Here", year: 2014, artist_id: 1, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41m1ZveietL.jpg')
