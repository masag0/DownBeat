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
  Artist.create(name: "Sam Smith", genre: "Pop", img_url: 'https://bloximages.newyork1.vip.townnews.com/redandblack.com/content/tncms/assets/v3/editorial/c/f3/cf3c7c76-c6f1-11e7-8de1-932aea39c97a/5a07123fc112f.image.jpg', description: 'Sam Smith was born in London in May 1992 and began singing at a young age. He first hit the charts as the featured singer on the 2012 Disclosure song "Latch," and he released his first single, "Lay Me Down," soon after. In 2014, Smith released In the Lonely Hour, his heartfelt debut full-length album. It contained the smash hit "Stay With Me," a radio staple over the course of the entire year. For his work on In the Lonely Hour, Smith was awarded four Grammys, among them Song of the Year and Record of the Year.')
  Artist.create(name: "U2", genre: "Rock", img_url: 'http://cdn.ontourmedia.io/u2/non_secure/images/20170105/new_profile_crop1483638184/large.jpg', description: "Through a combination of zealous righteousness and post-punk experimentalism, U2 became one of the most popular rock & roll bands in the world -- equally known for their sweeping sound as for their grandiose statements about politics and religion. The Edge provided the group with a signature sound by creating sweeping sonic landscapes with his heavily processed, echoed guitars. Though the Edge's style wasn't conventional, the rhythm section of Larry Mullen, Jr. and Adam Clayton played the songs as driving hard rock, giving the band a forceful, powerful edge that was designed for arenas. And their lead singer, Bono, was a frontman with a knack of grand gestures that played better in stadiums than small clubs. It's no accident that footage of Bono parading with a white flag with \"Sunday Bloody Sunday\" blaring in the background became the defining moment of U2's early career -- there rarely was a band that believed so deeply in rock's potential for revolution as U2, and there rarely was a band whose members didn't care if they appeared foolish in the process.")
  Artist.create(name: "Third Eye Blind", genre: "Alternative", img_url: 'https://www.billboard.com/files/media/Third-Eye-Blind-Press-cr-Danny-Shippey-Billboard-1548.jpg', description: "Third Eye Blind is an American rock band formed in San Francisco in 1993. The songwriting duo of Stephan Jenkins and Kevin Cadogan signed the band's first major label recording contract with Elektra Records in 1996, which was later reported as the largest publishing deal ever for an unsigned artist. The band released their self-titled album, Third Eye Blind, in 1997, with the band largely consisting of Jenkins (lead vocals, rhythm guitar), Cadogan (lead guitar), Arion Salazar (bass guitar), and Brad Hargreaves (drums). Shortly after the release of the band's second album in 1999, Blue, with the same line-up, Cadogan was released from the band under controversial circumstances.

The band continued, but with many line-up changes and gaps between album releases. The band released Out of the Vein in 2003 and Ursa Major in 2009, with only Jenkins and Hargreaves as the remaining core members. The band's current iteration, including Kryz Reid (lead guitar), Alex Kopp (keyboards), and Alex LeCavalier (bass guitar), recorded the band's fifth studio album, Dopamine, which was released in 2015. The EP We Are Drugs, featuring the same lineup, was released in 2016.

The band found commercial success in the late 1990s, with Third Eye Blind and Blue going six times and single platinum in the United States respectively. Several songs were a commercial success as well, with \"Semi-Charmed Life,\" \"Jumper,\" and \"How's It Going to Be,\" all reaching the Top 10 of the US Billboard Hot 100, and \"Never Let You Go\" reaching the Top 20. Third Eye Blind has sold around 12 million records worldwide.")
  Artist.create(name: "Jazztronik", genre: "Electronica", img_url: 'https://geo-media.beatport.com/image/8e9a84a2-7d15-4f88-b853-2b62307f2836.jpg', description: "Jazztronik is a Japanese music group by the Tokyo-based DJ/producer/pianist Ryota Nozaki, that does not have fixed members. Jazztronik has released two albums and two EPs since 1998 on label Flower Records. In 2001 Jazztronik also released the album \"Inner Flight\" on Counterpoint, a UK label.

Jazztronik has been growing in popularize and has hit sales of 100, to 000+. Jazztronik performs to sold out crowds all across the Japanese club scene and his growth in America and Europe has helped him reach popularity in the English club scene.")




    Album.create(title: "We Like It Here", year: 2014, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41m1ZveietL.jpg', description: 'From the moment Snarky Puppy played its first overseas show to a sold-out London crowd, they felt at home in Europe. Recorded and filmed live with a studio audience over 4 nights in the Netherlands, \'We Like It Here\' captures the band at its most explorative point in its career, in both composition and improvisation. ')
    Album.create(title: "groundUP", year: 2012, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51Bx2nsBpRL.jpg')
    Album.create(title: "Sylva", year: 2015, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://cps-static.rovicorp.com/3/JPG_500/MI0003/852/MI0003852224.jpg?partner=allrovi.com')
    Album.create(title: "Tawk Tomahawk", year: 2012, artist_id: Artist.find_by(name: 'Hiatus Kaiyote').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/c_scale,w_400/v1517354552/front_vykr0f.jpg')
    Album.create(title: "Flint", year: 2014, artist_id: Artist.find_by(name: 'Bill Laurance').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/v1517654960/Bill%20Laurance/cover_fbgyh5.jpg')
    Album.create(title: "Swift", year: 2015, artist_id: Artist.find_by(name: 'Bill Laurance').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/v1517654977/Bill%20Laurance/cover_y74ulu.jpg')
    Album.create(title: "Light as a Feather", year: 1973, artist_id: Artist.find_by(name: 'Chick Corea').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/5/51/LightAsAFeather.jpg')
    Album.create(title: "Radius", year: 2015, artist_id: Artist.find_by(name: 'Allen Stone').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/71QfMor7UqL._SL1500_.jpg')
    Album.create(title: "In the Lonely Hour", year: 2014, artist_id: Artist.find_by(name: 'Sam Smith').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/9/99/Sam_Smith_-_In_the_Lonely_Hour_%28Official_Album_Cover%29.png')
    Album.create(title: "All That You Can't Leave Behind", year: 2000, artist_id: Artist.find_by(name: 'U2').id, img_url: 'https://cps-static.rovicorp.com/3/JPG_500/MI0002/415/MI0002415279.jpg?partner=allrovi.com')
    Album.create(title: "Third Eye Blind", year: 1997, artist_id: Artist.find_by(name: 'Third Eye Blind').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/d/da/Third_eye_blind_self_titled.jpg')
    Album.create(title: "Love Tribe", year: 2007, artist_id: Artist.find_by(name: 'Jazztronik').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51ZJ2cOXL1L._SS500.jpg')
    Album.create(title: "Room For Squares", year: 2001, artist_id: Artist.find_by(name: 'John Mayer').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/5/5a/JohnMayer_RoomForSquares.jpg')






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


    Song.create(title: "Money On My Mind", track_num: 1, duration: minutes_to_seconds('3:13'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029716/Sam%20Smith/01_-_Money_On_My_Mind.mp3')
    Song.create(title: "Good Thing", track_num: 2, duration: minutes_to_seconds('3:21'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029710/Sam%20Smith/02_-_Good_Thing.mp3')
    Song.create(title: "Stay With Me", track_num: 3, duration: minutes_to_seconds('2:52'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029721/Sam%20Smith/03_-_Stay_With_Me.mp3')
    Song.create(title: "Leave Your Lover", track_num: 4, duration: minutes_to_seconds('3:08'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029711/Sam%20Smith/04_-_Leave_Your_Lover.mp3')
    Song.create(title: "I'm Not The Only One", track_num: 5, duration: minutes_to_seconds('3:59'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029726/Sam%20Smith/05_-_I_m_Not_The_Only_One.mp3')
    Song.create(title: "I've Told You Now", track_num: 6, duration: minutes_to_seconds('3:30'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029728/Sam%20Smith/06_-_I_ve_Told_You_Now.mp3')
    Song.create(title: "Like I Can", track_num: 7, duration: minutes_to_seconds('2:47'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029728/Sam%20Smith/07_-_Like_I_Can.mp3')
    Song.create(title: "Life Support", track_num: 8, duration: minutes_to_seconds('2:53'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029722/Sam%20Smith/08_-_Life_Support.mp3')
    Song.create(title: "Not In That Way", track_num: 9, duration: minutes_to_seconds('2:52'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029724/Sam%20Smith/09_-_Not_In_That_Way.mp3')
    Song.create(title: "Lay Me Down", track_num: 10, duration: minutes_to_seconds('4:13'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029721/Sam%20Smith/10_-_Lay_Me_Down.mp3')
    Song.create(title: "Restart", track_num: 11, duration: minutes_to_seconds('3:52'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029727/Sam%20Smith/11_-_Restart.mp3')
    Song.create(title: "Latch", track_num: 12, duration: minutes_to_seconds('3:43'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029716/Sam%20Smith/12_-_Latch.mp3')
    Song.create(title: "La La La", track_num: 13, duration: minutes_to_seconds('3:39'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029715/Sam%20Smith/13_-_La_La_La.mp3')
    Song.create(title: "Make It To Me", track_num: 14, duration: minutes_to_seconds('2:43'), album_id: Album.find_by(title: 'In the Lonely Hour').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518029709/Sam%20Smith/14_-_Make_It_To_Me.mp3')

#missing Kite
    Song.create(title: "Beautiful Day", track_num: 1, duration: minutes_to_seconds('4:08'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054862/U2/01_Beautiful_Day.m4a')
    Song.create(title: "Stuck In A Moment You Can't Get Out Of", track_num: 2, duration: minutes_to_seconds('4:32'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054867/U2/02_Stuck_in_a_Moment_You_Can_t_Get_O.m4a')
    Song.create(title: "Elevation", track_num: 3, duration: minutes_to_seconds('3:47'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054863/U2/03_Elevation.m4a')
    Song.create(title: "Walk On", track_num: 4, duration: minutes_to_seconds('4:56'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054867/U2/04_Walk_On.m4a')
    Song.create(title: "Kite", track_num: 5, duration: minutes_to_seconds('4:26'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054867/U2/04_Walk_On.m4a')
    Song.create(title: "In A Little While", track_num: 6, duration: minutes_to_seconds('3:39'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054863/U2/06_In_a_Little_While.m4a')
    Song.create(title: "Wild Honey", track_num: 7, duration: minutes_to_seconds('3:46'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054869/U2/07_Wild_Honey.m4a')
    Song.create(title: "Peace on Earth", track_num: 8, duration: minutes_to_seconds('4:48'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054866/U2/08_Peace_on_Earth.m4a')
    Song.create(title: "When I Look At The World", track_num: 9, duration: minutes_to_seconds('4:17'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054880/U2/09_When_I_Look_at_the_World.m4a')
    Song.create(title: "New York", track_num: 10, duration: minutes_to_seconds('5:30'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054873/U2/10_New_York.m4a')
    Song.create(title: "Grace", track_num: 11, duration: minutes_to_seconds('5:30'), album_id: Album.find_by(title: 'All That You Can\'t Leave Behind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518054873/U2/11_Grace.m4a')


    Song.create(title: "Losing A Whole Year", track_num: 1, duration: minutes_to_seconds('3:20'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023606/Third%20Eye%20Blind/01_Losing_a_Whole_Year.mp3')
    Song.create(title: "Narcolepsy", track_num: 2, duration: minutes_to_seconds('3:48'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023608/Third%20Eye%20Blind/02_Narcolepsy.mp3')
    Song.create(title: "Semi-Charmed Life", track_num: 3, duration: minutes_to_seconds('4:28'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023620/Third%20Eye%20Blind/03_Semi-Charmed_Life.mp3')
    Song.create(title: "Jumper", track_num: 4, duration: minutes_to_seconds('4:32'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023614/Third%20Eye%20Blind/04_Jumper.mp3')
    Song.create(title: "Graduate", track_num: 5, duration: minutes_to_seconds('3:09'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023609/Third%20Eye%20Blind/05_Graduate.mp3')
    Song.create(title: "How's It Going To Be", track_num: 6, duration: minutes_to_seconds('4:13'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023615/Third%20Eye%20Blind/06_How_It_s_Going_to_Be.mp3')
    Song.create(title: "Thanks a Lot", track_num: 7, duration: minutes_to_seconds('4:56'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023617/Third%20Eye%20Blind/07_Thanks_a_Lot.mp3')
    Song.create(title: "Burning Man", track_num: 8, duration: minutes_to_seconds('2:59'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023610/Third%20Eye%20Blind/08_Burning_Man.mp3')
    Song.create(title: "Good For You", track_num: 9, duration: minutes_to_seconds('3:51'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023607/Third%20Eye%20Blind/09_Good_for_You.mp3')
    Song.create(title: "London", track_num: 10, duration: minutes_to_seconds('3:06'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023609/Third%20Eye%20Blind/10_London.mp3')
    Song.create(title: "I Want You", track_num: 11, duration: minutes_to_seconds('4:28'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023610/Third%20Eye%20Blind/11_I_Want_You.mp3')
    Song.create(title: "The Background", track_num: 12, duration: minutes_to_seconds('4:56'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023616/Third%20Eye%20Blind/12_The_Background.mp3')
    Song.create(title: "Motorcycle Diversity", track_num: 13, duration: minutes_to_seconds('4:21'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023609/Third%20Eye%20Blind/13_Motorcycle_Driveby.mp3')
    Song.create(title: "God Of Wine", track_num: 14, duration: minutes_to_seconds('5:17'), album_id: Album.find_by(title: 'Third Eye Blind').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518023619/Third%20Eye%20Blind/14_God_of_Wine.mp3')


    Song.create(title: "
Love Tribe (feat. Miss Vehna from Soul Trip!!) (Main Mix)", track_num: 1, duration: minutes_to_seconds('5:33'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050298/Jazztronik/01_Love_Tribe_feat._Miss_Vehna_from.m4a')
    Song.create(title: "The King of Dance", track_num: 2, duration: minutes_to_seconds('8:47'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050303/Jazztronik/02_The_King_of_Dance.m4a')
    Song.create(title: "Life Syncopetion", track_num: 3, duration: minutes_to_seconds('5:31'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050288/Jazztronik/03_Life_Syncopetion.m4a')
    Song.create(title: "
Festalica!! (Clap Ya Hands!!)", track_num: 4, duration: minutes_to_seconds('5:27'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050288/Jazztronik/04_Festalica_Clap_Ya_Hands.m4a')
    Song.create(title: "Tiger Eyes (feat. Monday Michiru) (English Version)", track_num: 5, duration: minutes_to_seconds('8:32'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050299/Jazztronik/05_Tiger_Eyes_feat._Monday_Michiru.m4a')
    Song.create(title: "How's It Going To Be", track_num: 6, duration: minutes_to_seconds('6:12'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050307/Jazztronik/06_Dust_to_Dust_feat._Robert_Gallag.m4a')


    Song.create(title: "No Such Thing", track_num: 1, duration: minutes_to_seconds('3:51'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050116/John%20Mayer/01_No_Such_Thing.m4a')
    Song.create(title: "Why Georgia", track_num: 2, duration: minutes_to_seconds('4:28'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050120/John%20Mayer/02_Why_Georgia.m4a')
    Song.create(title: "My Stupid Mouth", track_num: 3, duration: minutes_to_seconds('3:45'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050119/John%20Mayer/03_My_Stupid_Mouth.m4a')
    Song.create(title: "Your Body is a Wonderland", track_num: 4, duration: minutes_to_seconds('4:09'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050113/John%20Mayer/04_Your_Body_Is_A_Wonderland.m4a')
    Song.create(title: "Neon", track_num: 5, duration: minutes_to_seconds('4:22'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050124/John%20Mayer/05_Neon.mp3')
    Song.create(title: "City Love", track_num: 6, duration: minutes_to_seconds('4:00'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050122/John%20Mayer/06_City_Love.mp3')
    Song.create(title: "83", track_num: 7, duration: minutes_to_seconds('4:50'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050116/John%20Mayer/07_83.m4a')
    Song.create(title: "3x5", track_num: 8, duration: minutes_to_seconds('4:50'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050123/John%20Mayer/08_3x5.m4a')
    Song.create(title: "Love Song For No One", track_num: 9, duration: minutes_to_seconds('3:21'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050121/John%20Mayer/09_Love_Song_For_No_One.m4a')
    Song.create(title: "Back To You", track_num: 10, duration: minutes_to_seconds('4:01'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050120/John%20Mayer/10_Back_To_You.m4a')
    Song.create(title: "Great Indoors", track_num: 11, duration: minutes_to_seconds('3:36'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050128/John%20Mayer/11_Great_Indoors.m4a')
    Song.create(title: "Not Myself", track_num: 12, duration: minutes_to_seconds('3:40'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050116/John%20Mayer/12_Not_Myself.m4a')
    Song.create(title: "St. Patrick's Day", track_num: 13, duration: minutes_to_seconds('5:21'), album_id: Album.find_by(title: 'Room For Squares').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050115/John%20Mayer/13_St._Patrick_s_Day.m4a')



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







