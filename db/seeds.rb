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

Artist.create(name: "Snarky Puppy", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png', description: "Fusion-influenced jam band Snarky Puppy make exploratory jazz, rock, and funk. Formed in Denton, Texas in 2004, the group features a wide-ranging assemblage of musicians known affectionately as \"the Fam,\" centered around bassist and leader Michael League. They debuted with the concert album Live at Uncommon Ground in 2005. Since then, the band has built up a loyal following with a steady touring schedule and a handful of well-received albums including The Only Constant (2006), The World Is Getting Smaller (2007), Bring Us the Bright (2008), Tell Your Friends (2010), and groundUP (2012). In 2013, Snarky Puppy released the album Family Dinner, Vol. 1, which featured a cover of Brenda Russell's \"Something.\" The song proved a hit and propelled the album up various digital download charts. In 2014, they shared a Grammy Award for Best R&B Performance for the song, and recorded the live We Like It Here in Utrecht, Netherlands. The set was released on Ropeadope.

Snarky Puppy next signed to Impulse! and released Sylva, a collaboration with the Netherlands-based Metropole Orkest. The album was greeted enthusiastically by the international press and won the band its second Grammy, this time for Best Contemporary Instrumental Album, at the 2016 Grammy Awards. They followed it with two live documents. The first was World Tour, a 32-disc box featuring their 16 favorite concerts. The deluxe package was sold exclusively through their website. Also in early 2016, they issued the audio-video set Family Dinner, Vol. 2, a documentary follow-up to the first Family Dinner recorded the preceding year. It showcased the band during a concert (and included guests Charlie Hunter, Susana Baca, Salif Keita, and David Crosby), in interviews, and in backstage sequences. In April 2016, Snarky Puppy struck again with Culcha Vulcha, their 11th studio album and first solely studio-based production in eight years. It topped the jazz album charts the week of its release and took home the prize for Best Contemporary Instrumental Album at the 2017 Grammy Awards. ~ Matt Collar, Rovi")
Artist.create(name: "Hiatus Kaiyote", genre: "Jazz", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/media/hiatus-kaiyote-press-2014-billboard-650.jpg')
Artist.create(name: "Moonchild", genre: "Jazz", img_url: 'https://f4.bcbits.com/img/0009860726_10.jpg')
Artist.create(name: "John Mayer", genre: "Pop", img_url: 'https://www.billboard.com/files/media/john-mayer-aug-2017-billboard-1548.jpg')

Album.create(title: "We Like It Here", year: 2014, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41m1ZveietL.jpg')
Album.create(title: "Ground Up", year: 2012, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51Bx2nsBpRL.jpg')
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

