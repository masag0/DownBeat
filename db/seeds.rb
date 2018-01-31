# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def minutes_to_seconds(string)
  string.split(':').map { |a| a.to_i }.inject(0) { |a, b| a * 60 + b}
end


User.create(username: "guest", email: "guest@example.com", password: "password")
User.create(username: "candra", email: "candratran@gmail.com", password: "password")
User.create(username: "eddy", email: "edwinshin@gmail.com", password: "password")

Artist.create(name: "Snarky Puppy", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png')
Artist.create(name: "Hiatus Kaiyote", genre: "Jazz", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/media/hiatus-kaiyote-press-2014-billboard-650.jpg')
Artist.create(name: "Moonchild", genre: "Jazz", img_url: 'https://f4.bcbits.com/img/0009860726_10.jpg')
Artist.create(name: "John Mayer", genre: "Pop", img_url: 'https://www.billboard.com/files/media/john-mayer-aug-2017-billboard-1548.jpg')

Album.create(title: "We Like It Here", year: 2014, artist_id: 1, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41m1ZveietL.jpg')
Album.create(title: "Tawk Tomahawk", year: 2012, artist_id: Artist.find_by(name: 'Hiatus Kaiyote').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/c_scale,w_400/v1517354552/front_vykr0f.jpg')

Song.create(title: "Mobius Streak", duration: minutes_to_seconds('5:59'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354436/Tawk%20Tomahawk%202012/01_mobius_streak_fsmvdj.mp3')
Song.create(title: "Malika", duration: minutes_to_seconds('4:55'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354435/Tawk%20Tomahawk%202012/04_malika_firvgu.mp3')
Song.create(title: "Nakamarra", duration: minutes_to_seconds('4:35'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354433/Tawk%20Tomahawk%202012/10_nakamarra_rzhjac.mp3')
Song.create(title: "Rainbow Rhodes", duration: minutes_to_seconds('1:53'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354433/Tawk%20Tomahawk%202012/08_rainbow_rhodes_gxx0u0.mp3')
Song.create(title: "Sphynx Gate", duration: minutes_to_seconds('1:58'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354430/Tawk%20Tomahawk%202012/09_sphynx_gate_btjkdr.mp3')
Song.create(title: "The World It Softly Lulls", duration: minutes_to_seconds('2:56'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354427/Tawk%20Tomahawk%202012/02_the_world_it_softly_lulls_y18dza.mp3')
Song.create(title: "Boom Child", duration: minutes_to_seconds('1:31'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354427/Tawk%20Tomahawk%202012/06_boom_child_udkjf3.mp3')
Song.create(title: "Lace Skull", duration: minutes_to_seconds('4:00'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354426/Tawk%20Tomahawk%202012/07_lace_skull_osjb7x.mp3')
Song.create(title: "Leap Frog", duration: minutes_to_seconds('1:24'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354425/Tawk%20Tomahawk%202012/03_leap_frog_rvfnnx.mp3')
Song.create(title: "Ocelot", duration: minutes_to_seconds('1:23'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354421/Tawk%20Tomahawk%202012/05_ocelot_pvqujn.mp3')

