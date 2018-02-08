# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  User.destroy_all
  Artist.destroy_all
  Album.destroy_all
  Song.destroy_all
  Playlist.destroy_all
  PlaylistFollow.destroy_all
  PlaylistSong.destroy_all
  PlaylistSong.destroy_all

  def minutes_to_seconds(string)
    string.split(':').map { |el| el.to_i }.inject(0) { |acc, el| acc * 60 + el}
  end


  User.create(username: "guest", email: "guest@example.com", password: "password")
  User.create(username: "default", email: "default@example.com", password: "password")
  User.create(username: "candra", email: "candratran@gmail.com", password: "password")
  User.create(username: "eddy", email: "edwinshin@gmail.com", password: "password")

  Artist.create(name: "Snarky Puppy", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png', description: "Fusion-influenced jam band Snarky Puppy make exploratory jazz, rock, and funk. Formed in Denton, Texas in 2004, the group features a wide-ranging assemblage of musicians known affectionately as \"the Fam,\" centered around bassist and leader Michael League. They debuted with the concert album Live at Uncommon Ground in 2005. Since then, the band has built up a loyal following with a steady touring schedule and a handful of well-received albums including The Only Constant (2006), The World Is Getting Smaller (2007), Bring Us the Bright (2008), Tell Your Friends (2010), and groundUP (2012). In 2013, Snarky Puppy released the album Family Dinner, Vol. 1, which featured a cover of Brenda Russell's \"Something.\" The song proved a hit and propelled the album up various digital download charts. In 2014, they shared a Grammy Award for Best R&B Performance for the song, and recorded the live We Like It Here in Utrecht, Netherlands. The set was released on Ropeadope.

  Snarky Puppy next signed to Impulse! and released Sylva, a collaboration with the Netherlands-based Metropole Orkest. The album was greeted enthusiastically by the international press and won the band its second Grammy, this time for Best Contemporary Instrumental Album, at the 2016 Grammy Awards. They followed it with two live documents. The first was World Tour, a 32-disc box featuring their 16 favorite concerts. The deluxe package was sold exclusively through their website. Also in early 2016, they issued the audio-video set Family Dinner, Vol. 2, a documentary follow-up to the first Family Dinner recorded the preceding year. It showcased the band during a concert (and included guests Charlie Hunter, Susana Baca, Salif Keita, and David Crosby), in interviews, and in backstage sequences. In April 2016, Snarky Puppy struck again with Culcha Vulcha, their 11th studio album and first solely studio-based production in eight years. It topped the jazz album charts the week of its release and took home the prize for Best Contemporary Instrumental Album at the 2017 Grammy Awards.")

  Artist.create(name: "Hiatus Kaiyote", genre: "Jazz", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/media/hiatus-kaiyote-press-2014-billboard-650.jpg', description: 'Hiatus Kaiyote is a future-soul quartet formed in Melbourne in 2011. The members are Naomi "Nai Palm" Saalfield (vocals, guitar), Paul Bender (bass), Simon Mavin (keyboards) and Perrin Moss (drums, percussion). In 2013, they were nominated for a Grammy for Best R&B Performance for their song "Nakamarra", performed with Q-Tip. The song appears on their debut album, Tawk Tomahawk, released by Flying Buddha.')
  Artist.create(name: "Moonchild", genre: "Jazz", img_url: 'https://f4.bcbits.com/img/0009860726_10.jpg')
  Artist.create(name: "John Mayer", genre: "Pop", img_url: 'https://www.billboard.com/files/media/john-mayer-aug-2017-billboard-1548.jpg', description: 'Born on October 16, 1977, John Mayer launched his music career in the late 1990s. In 2001 he released the album Room for Squares, and two years later he debuted Heavier Things. Both efforts were commercially successful, multi-platinum albums that spawned several hits, including Grammy-winning songs like "Your Body Is a Wonderland" and "Daughters." Having established himself in adult contemporary rock, Mayer broadened the scope of his sound to incorporate the blues, forming the John Mayer Trio in the mid 2000s. In 2015 he collaborated with Grateful Dead\'s Bob Weir to form the touring band Dead & Company.')
  Artist.create(name: "Hans Zimmer", genre: "Instrumental", img_url: 'https://www.billboard.com/files/media/Hans-Zimmer-cr-Zoe-Zimmer-2016-billboard-1548.jpg', description: 'Hans Florian Zimmer is a German film score composer and record producer. Since the 1980s, he has composed music for over 150 films. His works include The Lion King, for which he won the Academy Award for Best Original Score in 1995, the Pirates of the Caribbean series, The Thin Red Line, Gladiator, The Last Samurai, and The Dark Knight Trilogy.')
  Artist.create(name: "Chick Corea", genre: "Jazz", img_url: 'http://www.theshedd.org/uh/scaleimage.ashx?id=7383&width=400', description: 'Chick Corea has been one of the most significant jazzmen since the \'60s. Not content at any time to rest on his laurels, he has been involved in quite a few important musical projects, and his musical curiosity has never dimmed. A masterful pianist who, along with Herbie Hancock and Keith Jarrett, was one of the top stylists to emerge after Bill Evans and McCoy Tyner, Corea is also one of the few electric keyboardists to be quite individual and recognizable on synthesizers. In addition, he has composed several jazz standards, including "Spain," "La Fiesta," and "Windows."')
  Artist.create(name: "Bill Laurance", genre: "Jazz", img_url: 'https://voting.mobo.com/sites/default/files/bill%20laurence%20d.jpg', description: 'Grammy award winner and Original member of the internationally acclaimed Snarky Puppy, Bill Laurance released his debut album FLINT in 2014 going straight to No1 in the iTunes Jazz Charts and receiving international critical acclaim. His second album SWIFT is released on GroundUP music in Spring 2015.

    Classically trained, Bill has worked as a professional musician since he was 14, touring internationally as a pianist, keyboard player, composer, producer and arranger, recording and or performing with artists including: David Crosby, Morcheeba, Salif Keita, Bobby McFerrin, Susana Baca, Lalah Hathaway, Laura Mvula, Jacob Collier, Musiq Soul Child, Chris Potter, Lionel Loueke, Carlos Malta, Miss Dynamite and The Metropole Orchestra.')
    Artist.create(name: "Allen Stone", genre: "R&B", img_url: 'https://www.out.com/sites/out.com/files/2016/03/15/allen-stone.jpg', description: 'Allen Stone (born March 13, 1987) is an American soul musician from Chewelah, Washington, United States. His website states that people describe him as a soul and R&B singer, yet he sees himself as a "hippie with soul."')


    Album.create(title: "We Like It Here", year: 2014, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41m1ZveietL.jpg', description: 'From the moment Snarky Puppy played its first overseas show to a sold-out London crowd, they felt at home in Europe. Recorded and filmed live with a studio audience over 4 nights in the Netherlands, \'We Like It Here\' captures the band at its most explorative point in its career, in both composition and improvisation. ')
    Album.create(title: "groundUP", year: 2012, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51Bx2nsBpRL.jpg')
    Album.create(title: "Sylva", year: 2015, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://cps-static.rovicorp.com/3/JPG_500/MI0003/852/MI0003852224.jpg?partner=allrovi.com')
    Album.create(title: "Tawk Tomahawk", year: 2012, artist_id: Artist.find_by(name: 'Hiatus Kaiyote').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/c_scale,w_400/v1517354552/front_vykr0f.jpg')
    Album.create(title: "Flint", year: 2014, artist_id: Artist.find_by(name: 'Bill Laurance').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/v1517654960/Bill%20Laurance/cover_fbgyh5.jpg')
    Album.create(title: "Swift", year: 2015, artist_id: Artist.find_by(name: 'Bill Laurance').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/v1517654977/Bill%20Laurance/cover_y74ulu.jpg')
    Album.create(title: "Light as a Feather", year: 1973, artist_id: Artist.find_by(name: 'Chick Corea').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/5/51/LightAsAFeather.jpg')
    Album.create(title: "Radius", year: 2015, artist_id: Artist.find_by(name: 'Allen Stone').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/71QfMor7UqL._SL1500_.jpg')






    Song.create(title: "Mobius Streak", track_num: 1, duration: minutes_to_seconds('5:59'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354436/Tawk%20Tomahawk%202012/01_mobius_streak_fsmvdj.mp3')
    Song.create(title: "Malika", track_num: 4, duration: minutes_to_seconds('4:55'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354435/Tawk%20Tomahawk%202012/04_malika_firvgu.mp3')
    Song.create(title: "Nakamarra", track_num: 10, duration: minutes_to_seconds('4:35'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354433/Tawk%20Tomahawk%202012/10_nakamarra_rzhjac.mp3')
    Song.create(title: "Rainbow Rhodes", track_num: 8, duration: minutes_to_seconds('1:53'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354433/Tawk%20Tomahawk%202012/08_rainbow_rhodes_gxx0u0.mp3')
    Song.create(title: "Sphynx Gate", track_num: 9, duration: minutes_to_seconds('1:58'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354430/Tawk%20Tomahawk%202012/09_sphynx_gate_btjkdr.mp3')
    Song.create(title: "The World It Softly Lulls", track_num: 2, duration: minutes_to_seconds('2:56'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354427/Tawk%20Tomahawk%202012/02_the_world_it_softly_lulls_y18dza.mp3')
    Song.create(title: "Boom Child", track_num: 6, duration: minutes_to_seconds('1:31'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354427/Tawk%20Tomahawk%202012/06_boom_child_udkjf3.mp3')
    Song.create(title: "Lace Skull", track_num: 7, duration: minutes_to_seconds('4:00'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354426/Tawk%20Tomahawk%202012/07_lace_skull_osjb7x.mp3')
    Song.create(title: "Leap Frog", track_num: 3, duration: minutes_to_seconds('1:24'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354425/Tawk%20Tomahawk%202012/03_leap_frog_rvfnnx.mp3')
    Song.create(title: "Ocelot", track_num: 5, duration: minutes_to_seconds('1:23'), album_id: Album.find_by(title: 'Tawk Tomahawk').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517354421/Tawk%20Tomahawk%202012/05_ocelot_pvqujn.mp3')


    Song.create(title: "Thing of Gold", track_num: 1, duration: minutes_to_seconds('6:25'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728654/Snarky%20Puppy/01_Thing_Of_Gold.mp3')
    Song.create(title: "Bent Nails", track_num: 2, duration: minutes_to_seconds('5:02'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728649/Snarky%20Puppy/02_Bent_Nails.mp3')
    Song.create(title: "Minjor", track_num: 3, duration: minutes_to_seconds('5:24'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728696/Snarky%20Puppy/03_Minjor.mp3')
    Song.create(title: "Binky", track_num: 4, duration: minutes_to_seconds('9:38'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728694/Snarky%20Puppy/04_Binky.mp3')
    Song.create(title: "Mr. Montauk", track_num: 5, duration: minutes_to_seconds('5:53'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728653/Snarky%20Puppy/05_Mr._Montauk.mp3')
    Song.create(title: "Like A Light", track_num: 6, duration: minutes_to_seconds('4:47'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728693/Snarky%20Puppy/06_Like_A_Light.mp3')
    Song.create(title: "Young Stuff", track_num: 7, duration: minutes_to_seconds('9:02'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728656/Snarky%20Puppy/07_Young_Stuff.mp3')
    Song.create(title: "Quarter Master", track_num: 8, duration: minutes_to_seconds('8:44'), album_id: Album.find_by(title: 'groundUP').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728694/Snarky%20Puppy/08_Quarter_Master.mp3')


    Song.create(title: "Shofukan", track_num: 1, duration: minutes_to_seconds('6:33'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728588/01_Shofukan_ujc61h.mp3')
    Song.create(title: "What About Me?", track_num: 2, duration: minutes_to_seconds('6:42'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728596/02_What_About_Me-_w2tthg.mp3')
    Song.create(title: "Sleeper", track_num: 3, duration: minutes_to_seconds('6:51'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728592/03_Sleeper_valykk.mp3')
    Song.create(title: "Jambone", track_num: 4, duration: minutes_to_seconds('5:07'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728629/04_Jambone_r1awlz.mp3')
    Song.create(title: "Kite", track_num: 5, duration: minutes_to_seconds('6:12'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728630/05_Kite_qxxgkl.mp3')
    Song.create(title: "Outlier", track_num: 6, duration: minutes_to_seconds('6:45'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728590/06_Outlier_o2w2q0.mp3')
    Song.create(title: "Tio Macaco", track_num: 7, duration: minutes_to_seconds('5:43'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728632/07_Tio_Macaco_eguhjt.mp3')
    Song.create(title: "Lingus", track_num: 8, duration: minutes_to_seconds('10:45'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728623/08_Lingus_xyqjwh.mp3')


    Song.create(title: "Sintra", track_num: 1, duration: minutes_to_seconds('3:32'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025822/Snarky%20Puppy/01._Sintra.mp3')
    # Song.create(title: "Flight", track_num: 2, duration: minutes_to_seconds('6:03'), album_id: Album.find_by(title: 'Sylva').id ,link: '')
    # Song.create(title: "Atchafalaya", track_num: 3, duration: minutes_to_seconds('6:04'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728592/03_Sleeper_valykk.mp3')
    # Song.create(title: "The Curtain", track_num: 4, duration: minutes_to_seconds('15:09'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728629/04_Jambone_r1awlz.mp3')
    # Song.create(title: "Gretel", track_num: 5, duration: minutes_to_seconds('4:21'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728630/05_Kite_qxxgkl.mp3')
    # Song.create(title: "The Clearing", track_num: 6, duration: minutes_to_seconds('19:23'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728630/05_Kite_qxxgkl.mp3')



    Song.create(title: "Prologue\: Fjords", track_num: 1, duration: minutes_to_seconds('8:27'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654974/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_01_Prologue-_Fjords_vqzl3w.mp3')
    Song.create(title: "December in New York", track_num: 2, duration: minutes_to_seconds('4:55'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654985/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_02_December_in_New_York_qltis4.mp3')
    Song.create(title: "Swift", track_num: 3, duration: minutes_to_seconds('4:43'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654979/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_03_Swift_hprqja.mp3')
    Song.create(title: "U-Bahn", track_num: 4, duration: minutes_to_seconds('6:48'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654973/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_04_U-Bahn_grogfi.mp3')
    Song.create(title: "The Rush", track_num: 5, duration: minutes_to_seconds('5:21'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654974/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_05_The_Rush_i2xsrv.mp3')
    Song.create(title: "Denmark Hill", track_num: 6, duration: minutes_to_seconds('5:13'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654985/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_06_Denmark_Hill_pwcpnd.mp3')
    Song.create(title: "Red Sand", track_num: 7, duration: minutes_to_seconds('5:19'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654966/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_07_Red_Sand_lxyzon.mp3')
    Song.create(title: "The Real One", track_num: 8, duration: minutes_to_seconds('6:26'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654979/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_08_The_Real_One_veirjw.mp3')
    Song.create(title: "Mr. Elevator", track_num: 9, duration: minutes_to_seconds('5:03'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654986/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_09_Mr._Elevator_itn4na.mp3')
    Song.create(title: "One Time", track_num: 10, duration: minutes_to_seconds('4:21'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654981/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_10_One_Time_zkvevx.mp3')
    Song.create(title: "The Isles", track_num: 11, duration: minutes_to_seconds('12:05'), album_id: Album.find_by(title: 'Swift').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654981/Bill%20Laurance/Swift/Bill_Laurance_-_Swift_-_11_The_Isles_lrwjud.mp3')


    Song.create(title: "Neverending City", track_num: 1, duration: minutes_to_seconds('4:28'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654970/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_01_Neverending_City_hjoglk.mp3')
    Song.create(title: "Money in the Desert", track_num: 2, duration: minutes_to_seconds('5:56'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654966/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_02_Money_In_The_Desert_w3ctkt.mp3')
    Song.create(title: "Flint", track_num: 3, duration: minutes_to_seconds('4:03'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654980/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_03_Flint_doppuw.mp3')
    Song.create(title: "Swag Times", track_num: 4, duration: minutes_to_seconds('5:50'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654961/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_04_Swag_Times_nrkowp.mp3')
    Song.create(title: "The Good Things", track_num: 5, duration: minutes_to_seconds('6:53'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654966/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_05_The_Good_Things_slasgj.mp3')
    Song.create(title: "Chia", track_num: 6, duration: minutes_to_seconds('4:24'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654958/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_06_Chia_flqb9s.mp3')
    Song.create(title: "Smokers Castle", track_num: 7, duration: minutes_to_seconds('5:18'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654968/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_07_Smokers_Castle_fopeof.mp3')
    Song.create(title: "Gold Coast", track_num: 8, duration: minutes_to_seconds('4:58'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654976/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_08_Gold_Coast_xiiwc7.mp3')
    Song.create(title: "Ready Wednesday", track_num: 9, duration: minutes_to_seconds('9:38'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654961/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_09_Ready_Wednesday_pzp8pv.mp3')
    Song.create(title: "Audrey", track_num: 10, duration: minutes_to_seconds('2:58'), album_id: Album.find_by(title: 'Flint').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517654958/Bill%20Laurance/Flint/Bill_Laurance_-_Flint_-_10_Audrey_slvbm1.mp3')


    Song.create(title: "You're Everything", track_num: 1, duration: minutes_to_seconds('5:11'), album_id: Album.find_by(title: 'Light as a Feather').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517942872/Chick%20Corea/1-01_You_re_Everything.m4a')
    Song.create(title: "Light as a Feather", track_num: 2, duration: minutes_to_seconds('10:57'), album_id: Album.find_by(title: 'Light as a Feather').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517942871/Chick%20Corea/1-02_Light_as_a_Feather.m4a')
    Song.create(title: "Captain Marvel", track_num: 3, duration: minutes_to_seconds('4:53'), album_id: Album.find_by(title: 'Light as a Feather').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517942876/Chick%20Corea/1-03_Captain_Marvel.m4a')
    Song.create(title: "500 Miles High", track_num: 4, duration: minutes_to_seconds('9:07'), album_id: Album.find_by(title: 'Light as a Feather').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517942882/Chick%20Corea/1-04_500_Miles_High.m4a')
    Song.create(title: "Children's Song", track_num: 5, duration: minutes_to_seconds('2:47'), album_id: Album.find_by(title: 'Light as a Feather').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517942864/Chick%20Corea/1-05_Children_s_Song.m4a')
    Song.create(title: "Spain", track_num: 6, duration: minutes_to_seconds('9:51'), album_id: Album.find_by(title: 'Light as a Feather').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517942876/Chick%20Corea/1-06_Spain.m4a')


    Song.create(title: "Perfect World", track_num: 1, duration: minutes_to_seconds('3:16'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050226/Allen%20Stone/01._Perfect_World.mp3')
    Song.create(title: "Fake Future", track_num: 2, duration: minutes_to_seconds('2:55'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050227/Allen%20Stone/02._Fake_Future.mp3')
    Song.create(title: "American Priviledge", track_num: 3, duration: minutes_to_seconds('3:32'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050241/Allen%20Stone/03._American_Privilege.mp3')
    Song.create(title: "Circle", track_num: 4, duration: minutes_to_seconds('3:29'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050257/Allen%20Stone/04._Circle.mp3')
    Song.create(title: "Upside", track_num: 5, duration: minutes_to_seconds('4:01'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050263/Allen%20Stone/05._Upside.mp3')
    Song.create(title: "Freezer Burn", track_num: 6, duration: minutes_to_seconds('2:44'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050245/Allen%20Stone/06._Freezer_Burn.mp3')
    Song.create(title: "Love", track_num: 7, duration: minutes_to_seconds('2:56'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050249/Allen%20Stone/07._Love.mp3')
    Song.create(title: "Where You're At", track_num: 8, duration: minutes_to_seconds('2:39'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050239/Allen%20Stone/08._Where_You_re_At.mp3')
    Song.create(title: "Symmetrical", track_num: 9, duration: minutes_to_seconds('3:48'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050227/Allen%20Stone/09._Symmetrical.mp3')
    Song.create(title: "The Wire", track_num: 10, duration: minutes_to_seconds('2:47'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050249/Allen%20Stone/10._The_Wire.mp3')
    Song.create(title: "Guardian Angel", track_num: 11, duration: minutes_to_seconds('4:41'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050254/Allen%20Stone/11._Guardian_Angel.mp3')
    Song.create(title: "Freedom", track_num: 12, duration: minutes_to_seconds('3:51'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050225/Allen%20Stone/12._Freedom.mp3')
    Song.create(title: "Barbwire", track_num: 13, duration: minutes_to_seconds('4:03'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050216/Allen%20Stone/13._Barbwire.mp3')
    Song.create(title: "I Know That I Wasn't Right", track_num: 14, duration: minutes_to_seconds('6:50'), album_id: Album.find_by(title: 'Radius').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050258/Allen%20Stone/14._I_Know_That_I_Wasn_t_Right.mp3')


    #Genres
    Playlist.create(title: "Alternative", description: "Somewhere between pop and rock", genre: "Alternative", user_id: 2, img_url: 'https://images.pexels.com/photos/33597/guitar-classical-guitar-acoustic-guitar-electric-guitar.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "R&B", description: "Rhythm & Blues", genre: "R&B", user_id: 2, img_url: 'https://images.pexels.com/photos/164951/pexels-photo-164951.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Jazz", description: "Free improvisation and complex harmony", genre: "Jazz", user_id: 2, img_url: 'https://images.pexels.com/photos/164934/pexels-photo-164934.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Pop", description: "Catchy melodies and beats", genre: "Pop", user_id: 2, img_url: 'https://images.pexels.com/photos/316163/pexels-photo-316163.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Rock", description: "Rock 'n Roll", genre: "Rock", user_id: 2, img_url: 'https://images.pexels.com/photos/144428/pexels-photo-144428.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Blues", description: "Raw and emotional", genre: "Blues", user_id: 2, img_url: 'https://images.pexels.com/photos/733767/pexels-photo-733767.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Funk", description: "Get your groove on", genre: "Funk", user_id: 2, img_url: 'https://images.pexels.com/photos/96380/pexels-photo-96380.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Electronica", description: "Electronic dance music", genre: "Electronica", user_id: 2, img_url: 'http://accurateproductions.com/wp-content/uploads/2017/09/1470122336648_res_original.jpg')

    #Moods
    Playlist.create(title: "Work Out", description: "Get pumped", user_id: 2, img_url: 'https://images.pexels.com/photos/136404/pexels-photo-136404.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Focus", description: "Music to help you get through the day", user_id: 2, img_url: 'https://images.pexels.com/photos/273222/pexels-photo-273222.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Relax", description: "Chill out, relax, and wind down", user_id: 2, img_url: 'https://images.pexels.com/photos/374703/pexels-photo-374703.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Sleep", description: "Peaceful music for sleeping", user_id: 2, img_url: 'https://images.pexels.com/photos/135859/pexels-photo-135859.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Wake Up", description: "Rise and shine!",user_id: 2, img_url: 'https://images.pexels.com/photos/4614/woman-morning-bathrobe-bathroom.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Cook", description: "What's for dinner?", user_id: 2, img_url: 'https://images.pexels.com/photos/357743/pexels-photo-357743.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Energy", description: "Energy when you need it", user_id: 2, img_url: 'https://images.pexels.com/photos/761963/pexels-photo-761963.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
    Playlist.create(title: "Dark & Stormy", description: "Let it out", user_id: 2, img_url: 'https://images.pexels.com/photos/531415/pexels-photo-531415.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')


    #Demo playlists
    Playlist.create(title: "My Playlist", description: "a cool playlist", genre: "jazz", user_id: 1, img_url: 'https://images.unsplash.com/photo-1479030160180-b1860951d696?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fbee86d97118ec6673c8d850c31787ef&auto=format&fit=crop&w=2250&q=80')
    Playlist.create(title: "My Playlist 2", description: "another cool playlist", genre: "jazz", user_id: 1, img_url: 'https://images.unsplash.com/photo-1517021202682-f4c63173f1b2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f535f650a9d98d1c62c3ace97040c869&auto=format&fit=crop&w=1319&q=80')


    #Featured
    Playlist.create(title: "Soundtracks", description: "Music from your favorite movies", genre: "Soundtrack", user_id: 2, featured: true, img_url: 'https://images8.alphacoders.com/560/560736.jpg')
    Playlist.create(title: "The Best of Snarky Puppy", description: "Selected tracks from Snarky Puppy's extensive discography", featured: true, genre: "Jazz", user_id: 2, img_url: 'http://www.snarkypuppy.com/media/carousel1.jpg')
    Playlist.create(title: "John Mayer's Top Hits", description: "Top Hits from John Mayer", genre: "Pop", user_id: 2, featured: true, img_url: 'https://www.thefamouspeople.com/profiles/images/john-mayer-1.jpg')
    Playlist.create(title: "Jazz Selections", description: "Selections of jazz music", genre: "Jazz", user_id: 2, featured: true, img_url: 'https://2b9sqw2iiqxr36ntqa1exnal-wpengine.netdna-ssl.com/wp-content/uploads/2017/12/jazz.jpg')
    Playlist.create(title: "Chillhop", description: "Chill beats", genre: "Jazz", user_id: 2, featured: true, img_url: 'https://i1.sndcdn.com/artworks-000139091822-ymuob1-t500x500.jpg')
    Playlist.create(title: "Funky Tunes", description: "Groovy tunes to get you moving", genre: "Funk", user_id: 2, featured: true, img_url: 'http://www.slopemedia.org/wp-content/uploads/2017/09/funk-what-the1.jpg')

    Song.all.each do |song|
      playlist = Playlist.find_by(title: song.genre)
      if !!playlist
        PlaylistSong.create(playlist_id: playlist.id, song_id: song.id)
      end
    end

    PlaylistSong.create(playlist_id: 17, song_id: 1)
    PlaylistSong.create(playlist_id: 17, song_id: 2)
    PlaylistSong.create(playlist_id: 17, song_id: 5)
    PlaylistSong.create(playlist_id: 17, song_id: 8)

    PlaylistSong.create(playlist_id: 18, song_id: 3)
    PlaylistSong.create(playlist_id: 18, song_id: 10)
    PlaylistSong.create(playlist_id: 18, song_id: 12)
    PlaylistSong.create(playlist_id: 18, song_id: 7)

    # PlaylistSong.create(playlist_id: Playlist.find_by(title: 'Jazz').id, song_id: Song.find_by(title: 'Spain').id)



    #img

end







