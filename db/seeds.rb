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

  def minutes_to_seconds(string)
    string.split(':').map { |el| el.to_i }.inject(0) { |acc, el| acc * 60 + el}
  end


  User.create(username: "guest", email: "guest@example.com", password: "password")
  User.create(username: "default", email: "default@example.com", password: "seeddata")
  User.create(username: "candra", email: "candratran@gmail.com", password: "password")
  User.create(username: "eddy", email: "edwinshin@gmail.com", password: "password")

  Artist.create(name: "Snarky Puppy", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png', description: "Fusion-influenced jam band Snarky Puppy make exploratory jazz, rock, and funk. Formed in Denton, Texas in 2004, the group features a wide-ranging assemblage of musicians known affectionately as \"the Fam,\" centered around bassist and leader Michael League. They debuted with the concert album Live at Uncommon Ground in 2005. Since then, the band has built up a loyal following with a steady touring schedule and a handful of well-received albums including The Only Constant (2006), The World Is Getting Smaller (2007), Bring Us the Bright (2008), Tell Your Friends (2010), and groundUP (2012). In 2013, Snarky Puppy released the album Family Dinner, Vol. 1, which featured a cover of Brenda Russell's \"Something.\" The song proved a hit and propelled the album up various digital download charts. In 2014, they shared a Grammy Award for Best R&B Performance for the song, and recorded the live We Like It Here in Utrecht, Netherlands. The set was released on Ropeadope.

  Snarky Puppy next signed to Impulse! and released Sylva, a collaboration with the Netherlands-based Metropole Orkest. The album was greeted enthusiastically by the international press and won the band its second Grammy, this time for Best Contemporary Instrumental Album, at the 2016 Grammy Awards. They followed it with two live documents. The first was World Tour, a 32-disc box featuring their 16 favorite concerts. The deluxe package was sold exclusively through their website. Also in early 2016, they issued the audio-video set Family Dinner, Vol. 2, a documentary follow-up to the first Family Dinner recorded the preceding year. It showcased the band during a concert (and included guests Charlie Hunter, Susana Baca, Salif Keita, and David Crosby), in interviews, and in backstage sequences. In April 2016, Snarky Puppy struck again with Culcha Vulcha, their 11th studio album and first solely studio-based production in eight years. It topped the jazz album charts the week of its release and took home the prize for Best Contemporary Instrumental Album at the 2017 Grammy Awards.")

  Artist.create(name: "Hiatus Kaiyote", genre: "Jazz", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/media/hiatus-kaiyote-press-2014-billboard-650.jpg', description: 'Hiatus Kaiyote is a future-soul quartet formed in Melbourne in 2011. The members are Naomi "Nai Palm" Saalfield (vocals, guitar), Paul Bender (bass), Simon Mavin (keyboards) and Perrin Moss (drums, percussion). In 2013, they were nominated for a Grammy for Best R&B Performance for their song "Nakamarra", performed with Q-Tip. The song appears on their debut album, Tawk Tomahawk, released by Flying Buddha.')
  Artist.create(name: "Moonchild", genre: "Jazz", img_url: 'https://f4.bcbits.com/img/0009860726_10.jpg', description: "Moonchild are LA-based multi-instrumentalistsAmber Navran, Max Bryk, and Andris Mattson. In May 2017, Moonchild released their highly-anticipated album ‘Voyager’ which pioneered a unique blend of soul and new-school jazz and was fronted by the standout debut single “Cure”. Praise for the project has continued to grow with vocal support across KCRW, BBC 1XTRA, BBC 6Music and NTS; a video premiere for the cinematic “Cure” with The Fader, and an upfront stream of the sun soaked “Show The Way” via Okayplayer. Further reviews from DJ Mag, The Evening Standard and LA Weekly add to support for the album, as well as online praise from NPR, The Fader, Bandcamp (who featured the album in their top 100 albums of 2017), Soulbounce, Saint Heron and Jazz FM playlisting.")
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
  Artist.create(name: "Stevie Ray Vaughan", genre: "Blues", img_url: 'https://images-na.ssl-images-amazon.com/images/I/C1rKoPCoK7S._CR0,0,3840,2880_._SL1000_.png', description: "With his astonishingly accomplished guitar playing, Stevie Ray Vaughan ignited the blues revival of the ’80s. Vaughan drew equally from bluesmen like Albert King, Buddy Guy, and Albert Collins and rock & roll players like Jimi Hendrix and Lonnie Mack, as well as jazz guitarists like Kenny Burrell and Wes Montgomery, developing a uniquely eclectic and fiery style that sounded like no other guitarist, regardless of genre. Vaughan bridged the gap between blues and rock like no other artist had since the late ’60s. From 1983 to 1990 Stevie Ray was the leading light in American blues, consistently selling out concerts while his albums regularly went gold. His tragic death in 1990 at age 35 cut short a brilliant career in blues and American rock & roll just as he was on the brink of superstardom.")
  Artist.create(name: "Vulfpeck", genre: "Funk", img_url: 'https://f4.bcbits.com/img/0010966154_10.jpg', description: "Vulfpeck is an American funk group founded in 2011. Influenced by rhythm sections of the past, the band has released four EPs, three albums, and a silent album on Spotify titled Sleepify – royalties from which funded the band's admission-free tour in 2014. The band's latest album, Mr. Finish Line, was released in November 2017.")
  Artist.create(name: "Zedd", genre: "Electronica", img_url: 'https://i1.sndcdn.com/avatars-000298013437-7oemlv-t500x500.jpg', description: "Anton Zaslavski, better known by his stage name Zedd, is a Russian-German record producer, DJ, musician, multi-instrumentalist and songwriter. He primarily produces and performs electro house music, but has diversified his genre and musical style, drawing influences from progressive house, dubstep, and classical music. Zedd grew up and began his career in Kaiserslautern, Germany.
Zedd's best-known productions to date are the songs \"Stay\" with Alessia Cara and \"Clarity\" featuring Foxes, both reaching the Top 10 respectively in two separate occasions which were in the 7th and 8th position on the Billboard Hot 100. Also as a featured artist, he managed to get into the 4th position with his collaboration with Ariana Grande called \"Break Free\". Zedd won a Grammy for Best Dance Recording at the 56th Grammy Awards for \"Clarity\". ")
  Artist.create(name: "T-SQUARE", genre: "Jazz", img_url: 'https://img.discogs.com/UVFavs60UDmBXn9YeSbgN1m1-U0=/500x333/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-1249160-1351873455-5146.jpeg.jpg', description: "T-Square is a Japanese jazz fusion band formed in 1978. They became famous in the late 70s and early 80s along with other Japanese bands in the genre.

Its most famous lineup included its members from 1986 to 1990: guitarist Masahiro Andoh, saxophonist/flutist/EWI player Takeshi Itoh, bassist Mitsuru Sutoh, keyboardist Hirotaka Izumi and drummer Hiroyuki Noritake. They are known for songs such as \"Truth\", \"Japanese Soul Brothers\", \"Takarajima\", \"Omens of Love\", among others. \"Truth\" has been used as the theme for Fuji Television's Formula One (F1) coverage from 1989 to 2000 and since 2012. An special arrangement, \"Truth 21c\", was used as the theme for Japan's F1 2001 and 2002, respectively, and other remixes of were used from 2003 to 2006.")
  Artist.create(name: "MUTEMATH", genre: "Rock", img_url: 'https://dx72k0ec4onep.cloudfront.net/manual_collection_covers/MUTEMATH.jpg', description: "Mutemath (sometimes styled as MuteMath or MUTEMATH) is an American alternative rock band from New Orleans that formed in 2002. The group consists of lead vocalist and keyboardist Paul Meany, guitarist Todd Gummerman, and bassist Jonathan Allen, but they often perform on any mixture or variation of these instruments. They draw heavily from influences in 1960s and 1970s soul, psychedelic rock, and jam band styles, utilizing vintage guitars and amplifiers, as well as Rhodes keyboards, synthesizers, and other electronic instruments such as the keytar.")




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
  Album.create(title: "Interstellar (Original Motion Picture Soundtrack)", year: 2014, artist_id: Artist.find_by(name: 'Hans Zimmer').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/81VnhAMhc4L._SL1425_.jpg')
  Album.create(title: "Inception (Music From The Motion Picture)", year: 2010, artist_id: Artist.find_by(name: 'Hans Zimmer').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51NbVEuw1HL.jpg')
  Album.create(title: "The Essential Stevie Ray Vaughan and Double Trouble", year: 2002, artist_id: Artist.find_by(name: 'Stevie Ray Vaughan').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/91cTAyZuReL._SL1500_.jpg')
  Album.create(title: "The Beautiful Game", year: 2016, artist_id: Artist.find_by(name: 'Vulfpeck').id, img_url: 'https://f4.bcbits.com/img/a1702319957_10.jpg')
  Album.create(title: "Thrill of the Arts", year: 2015, artist_id: Artist.find_by(name: 'Vulfpeck').id, img_url: 'https://f4.bcbits.com/img/a2234708408_16.jpg')
  Album.create(title: "True Colors", year: 2015, artist_id: Artist.find_by(name: 'Zedd').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/c/c9/Zedd-True-Colors.png')
  Album.create(title: "Clarity", year: 2012, artist_id: Artist.find_by(name: 'Zedd').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/3/32/Zedd_-_Clarity_%28album%29.png')
  Album.create(title: "Continuum", year: 2006, artist_id: Artist.find_by(name: 'John Mayer').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/8/82/Continuum_%28album%29.png')
  Album.create(title: "Brasil", year: 2001, artist_id: Artist.find_by(name: 'T-SQUARE').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51YQA9KU-NL.jpg')
  Album.create(title: "Mutemath", year: 2006, artist_id: Artist.find_by(name: 'MUTEMATH').id, img_url: 'https://upload.wikimedia.org/wikipedia/en/5/57/Muthemath%2C_album_cover.jpg')
  Album.create(title: "Voyager", year: 2017, artist_id: Artist.find_by(name: 'Moonchild').id, img_url: 'https://f4.bcbits.com/img/a1045883901_10.jpg')
  Album.create(title: "Choose Your Weapon", year: 2015, artist_id: Artist.find_by(name: 'Hiatus Kaiyote').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/81KYvR%2BCgJL._SY355_.jpg')






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
  Song.create(title: "Flight", track_num: 2, duration: minutes_to_seconds('6:03'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518130930/Snarky%20Puppy/02._Flight.mp3')
  Song.create(title: "Atchafalaya", track_num: 3, duration: minutes_to_seconds('6:04'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518130923/Snarky%20Puppy/03._Atchafalaya.mp3')
  Song.create(title: "The Curtain", track_num: 4, duration: minutes_to_seconds('15:09'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518130943/Snarky%20Puppy/04._The_Curtain.mp3')
  Song.create(title: "Gretel", track_num: 5, duration: minutes_to_seconds('4:21'), album_id: Album.find_by(title: 'Sylva').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518130909/Snarky%20Puppy/05._Gretel.mp3')
  Song.create(title: "The Clearing", track_num: 6, duration: minutes_to_seconds('19:23'), album_id: Album.find_by(title: 'Sylva').id ,link: 'https://dl.dropboxusercontent.com/s/7mg8j5r3cqtmxkq/06.%20The%20Clearing.mp3')



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


  Song.create(title: "Love Tribe (feat. Miss Vehna from Soul Trip!!) (Main Mix)", track_num: 1, duration: minutes_to_seconds('5:33'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050298/Jazztronik/01_Love_Tribe_feat._Miss_Vehna_from.m4a')
  Song.create(title: "The King of Dance", track_num: 2, duration: minutes_to_seconds('8:47'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050303/Jazztronik/02_The_King_of_Dance.m4a')
  Song.create(title: "Life Syncopetion", track_num: 3, duration: minutes_to_seconds('5:31'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050288/Jazztronik/03_Life_Syncopetion.m4a')
  Song.create(title: "Festalica!! (Clap Ya Hands!!)", track_num: 4, duration: minutes_to_seconds('5:27'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050288/Jazztronik/04_Festalica_Clap_Ya_Hands.m4a')
  Song.create(title: "Tiger Eyes (feat. Monday Michiru) (English Version)", track_num: 5, duration: minutes_to_seconds('8:32'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050299/Jazztronik/05_Tiger_Eyes_feat._Monday_Michiru.m4a')
  Song.create(title: "Dust To Dust", track_num: 6, duration: minutes_to_seconds('6:12'), album_id: Album.find_by(title: 'Love Tribe').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050307/Jazztronik/06_Dust_to_Dust_feat._Robert_Gallag.m4a')


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


  Song.create(title: "Dreaming of the Crash", track_num: 1, duration: minutes_to_seconds('3:55'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025074/Hans%20Zimmer/01_Dreaming_of_the_Crash.mp3')
  Song.create(title: "Cornfield Chase", track_num: 2, duration: minutes_to_seconds('2:07'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025044/Hans%20Zimmer/02_Cornfield_Chase.mp3')
  Song.create(title: "Dust", track_num: 3, duration: minutes_to_seconds('5:41'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025069/Hans%20Zimmer/03_Dust.mp3')
  Song.create(title: "Day One", track_num: 4, duration: minutes_to_seconds('3:19'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025053/Hans%20Zimmer/04_Day_One.mp3')
  Song.create(title: "Stay", track_num: 5, duration: minutes_to_seconds('6:52'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025073/Hans%20Zimmer/05_Stay.mp3')
  Song.create(title: "Message from Home", track_num: 6, duration: minutes_to_seconds('1:40'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025078/Hans%20Zimmer/06_Message_From_Home.mp3')
  Song.create(title: "The Wormhole", track_num: 7, duration: minutes_to_seconds('1:30'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025053/Hans%20Zimmer/07_The_Wormhole.mp3')
  Song.create(title: "Mountains", track_num: 8, duration: minutes_to_seconds('3:39'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025057/Hans%20Zimmer/08_Mountains.mp3')
  Song.create(title: "Afraid of Time", track_num: 9, duration: minutes_to_seconds('2:32'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025056/Hans%20Zimmer/09_Afraid_of_Time.mp3')
  Song.create(title: "A Place Among the Stars", track_num: 10, duration: minutes_to_seconds('3:27'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025039/Hans%20Zimmer/10_A_Place_Among_the_Stars.mp3')
  Song.create(title: "Running Out", track_num: 11, duration: minutes_to_seconds('1:57'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025047/Hans%20Zimmer/11_Running_Out.mp3')
  Song.create(title: "I'm Going Home", track_num: 12, duration: minutes_to_seconds('5:48'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025064/Hans%20Zimmer/12_I_m_Going_Home.mp3')
  Song.create(title: "Coward", track_num: 13, duration: minutes_to_seconds('8:26'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025086/Hans%20Zimmer/13_Coward.mp3')
  Song.create(title: "Detach", track_num: 14, duration: minutes_to_seconds('6:42'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025061/Hans%20Zimmer/14_Detach.mp3')
  Song.create(title: "S.T.A.Y.", track_num: 15, duration: minutes_to_seconds('6:23'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025077/Hans%20Zimmer/15_S.T.A.Y.mp3')
  Song.create(title: "Where We're Going", track_num: 16, duration: minutes_to_seconds('7:41'), album_id: Album.find_by(title: 'Interstellar (Original Motion Picture Soundtrack)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025077/Hans%20Zimmer/16_Where_We_re_Going.mp3')


  Song.create(title: "Half Remembered Dream", track_num: 1, duration: minutes_to_seconds('1:12'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025019/Hans%20Zimmer/01._Half_Remembered_Dream.mp3')
  Song.create(title: "We Built Our Own World", track_num: 2, duration: minutes_to_seconds('1:55'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025018/Hans%20Zimmer/02._We_Built_Our_Own_World.mp3')
  Song.create(title: "Dream Is Collapsing", track_num: 3, duration: minutes_to_seconds('2:23'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025030/Hans%20Zimmer/03._Dream_Is_Collapsing.mp3')
  Song.create(title: "Radical Notion", track_num: 4, duration: minutes_to_seconds('3:42'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025024/Hans%20Zimmer/04._Radical_Notion.mp3')
  Song.create(title: "Old Souls", track_num: 5, duration: minutes_to_seconds('7:44'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025052/Hans%20Zimmer/05._Old_Souls.mp3')
  Song.create(title: "528491", track_num: 6, duration: minutes_to_seconds('2:23'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025036/Hans%20Zimmer/06._528491.mp3')
  Song.create(title: "Mombassa", track_num: 7, duration: minutes_to_seconds('4:54'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025041/Hans%20Zimmer/07._Mombassa.mp3')
  Song.create(title: "One Simple Idea", track_num: 8, duration: minutes_to_seconds('2:28'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025022/Hans%20Zimmer/08._One_Simple_Idea.mp3')
  Song.create(title: "Dream Within A Dream", track_num: 9, duration: minutes_to_seconds('5:04'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025031/Hans%20Zimmer/09._Dream_Within_A_Dream.mp3')
  Song.create(title: "Waiting For A Train", track_num: 10, duration: minutes_to_seconds('9:30'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025042/Hans%20Zimmer/10._Waiting_For_A_Train.mp3')
  Song.create(title: "Paradox", track_num: 11, duration: minutes_to_seconds('3:25'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025017/Hans%20Zimmer/11._Paradox.mp3')
  Song.create(title: "Time", track_num: 12, duration: minutes_to_seconds('4:35'), album_id: Album.find_by(title: 'Inception (Music From The Motion Picture)').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025030/Hans%20Zimmer/12._Time.mp3')


  Song.create(title: "Shake for Me (Live at The Steamboat, 1980)", track_num: 1, duration: minutes_to_seconds('3:48'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056508/SRV/01_01_-_Shake_For_Me_Live.mp3')
  Song.create(title: "Rude Mood/Hide Away (Live)", track_num: 2, duration: minutes_to_seconds('4:57'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056542/SRV/02_02_-_Rude_Mood_-_Hide_Away_Live.mp3')
  Song.create(title: "Love Struck Baby", track_num: 3, duration: minutes_to_seconds('2:21'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056463/SRV/03_03_-_Love_Struck_Baby.mp3')
  Song.create(title: "Pride and Joy", track_num: 4, duration: minutes_to_seconds('3:39'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056484/SRV/04_04_-_Pride_And_Joy.mp3')
  Song.create(title: "Texas Flood", track_num: 5, duration: minutes_to_seconds('5:20'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056509/SRV/05_05_-_Texas_Flood.mp3')
  Song.create(title: "Mary Had a Little Lamb", track_num: 6, duration: minutes_to_seconds('2:46'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056458/SRV/06_06_-_Mary_Had_A_Little_Lamb.mp3')
  Song.create(title: "Lenny", track_num: 7, duration: minutes_to_seconds('4:57'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056539/SRV/07_07_-_Lenny.mp3')
  Song.create(title: "Scuttle Buttin'", track_num: 8, duration: minutes_to_seconds('1:51'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056530/SRV/08_08_-_Scuttle_Buttin.mp3')
  Song.create(title: "Couldn't Stand the Weather", track_num: 9, duration: minutes_to_seconds('4:41'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056530/SRV/09_09_-_Couldn_t_Stand_The_Weather.mp3')
  Song.create(title: "The Things (That) I Used to Do", track_num: 10, duration: minutes_to_seconds('4:54'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056489/SRV/10_10_-_The_Things_That_I_Used_To.mp3')
  Song.create(title: "Cold Shot", track_num: 11, duration: minutes_to_seconds('4:00'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056524/SRV/11_11_-_Cold_Shot.mp3')
  Song.create(title: "Tin Pan Alley (AKA Roughest Place in Town)", track_num: 12, duration: minutes_to_seconds('9:11'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056484/SRV/12_12_-_Tin_Pan_Alley_AKA_Roughest.mp3')
  Song.create(title: "Give Me Back My Wig", track_num: 13, duration: minutes_to_seconds('4:07'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056510/SRV/13_13_-_Give_Me_Back_My_Wig.mp3')
  Song.create(title: "Empty Arms (1984 Version)", track_num: 14, duration: minutes_to_seconds('3:29'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056507/SRV/14_14_-_Empty_Arms.mp3')
  Song.create(title: "The Sky Is Crying (Live)", track_num: 15, duration: minutes_to_seconds('7:19'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056473/SRV/15_15_-_The_Sky_Is_Crying_Live.mp3')
  Song.create(title: "Voodoo Child (Slight Return) (Live)", track_num: 16, duration: minutes_to_seconds('11:52'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518119585/SRV/16_16_-_Voodoo_Child_Slight_Return.mp3')
  Song.create(title: "Life by the Drop", track_num: 17, duration: minutes_to_seconds('2:27'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025077/Hans%20Zimmer/16_Where_We_re_Going.mp3')
  Song.create(title: "Say What!", track_num: 18, duration: minutes_to_seconds('5:23'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056537/SRV/01_01_-_Say_What.mp3')
  Song.create(title: "Look at Little Sister", track_num: 19, duration: minutes_to_seconds('3:07'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056454/SRV/02_02_-_Look_At_Little_Sister.mp3')
  Song.create(title: "Change It", track_num: 20, duration: minutes_to_seconds('3:57'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056464/SRV/03_03_-_Change_It.mp3')
  Song.create(title: "Come On, Pt. III", track_num: 21, duration: minutes_to_seconds('4:30'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056541/SRV/04_04_-_Come_On_Part_III.mp3')
  Song.create(title: "Life Without You", track_num: 22, duration: minutes_to_seconds('4:18'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056517/SRV/05_05_-_Life_Without_You.mp3')
  Song.create(title: "Little Wing", track_num: 23, duration: minutes_to_seconds('6:47'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518025078/Hans%20Zimmer/06_Message_From_Home.mp3')
  Song.create(title: "Willie The Wimp (Live)", track_num: 24, duration: minutes_to_seconds('4:34'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056513/SRV/07_07_-_Willie_The_Wimp_Live.mp3')
  Song.create(title: "Superstition (Live)", track_num: 25, duration: minutes_to_seconds('4:40'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056488/SRV/08_08_-_Superstition_Live.mp3')
  Song.create(title: "Leave My Girl Alone (Live)", track_num: 26, duration: minutes_to_seconds('4:46'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056536/SRV/09_09_-_Leave_My_Girl_Alone_Live.mp3')
  Song.create(title: "The House Is Rockin'", track_num: 27, duration: minutes_to_seconds('2:24'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056536/SRV/10_10_-_The_House_Is_Rockin.mp3')
  Song.create(title: "Crossfire", track_num: 28, duration: minutes_to_seconds('4:09'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056471/SRV/11_11_-_Crossfire.mp3')
  Song.create(title: "Tightrope", track_num: 29, duration: minutes_to_seconds('4:39'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056470/SRV/12_12_-_Tightrope.mp3')
  Song.create(title: "Wall of Denial", track_num: 30, duration: minutes_to_seconds('5:36'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056536/SRV/13_13_-_Wall_Of_Denial.mp3')
  Song.create(title: "Riviera Paradise", track_num: 31, duration: minutes_to_seconds('8:50'), album_id: Album.find_by(title: 'The Essential Stevie Ray Vaughan and Double Trouble').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518056502/SRV/14_14_-_Riviera_Paradise.mp3')


  Song.create(title: "The Sweet Science", track_num: 1, duration: minutes_to_seconds('1:55'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122571/Vulfpeck/TBG/01._The_Sweet_Science.mp3')
  Song.create(title: "Animal Spirits", track_num: 2, duration: minutes_to_seconds('3:10'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122580/Vulfpeck/TBG/02._Animal_Spirits.mp3')
  Song.create(title: "Dean Town", track_num: 3, duration: minutes_to_seconds('3:33'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122576/Vulfpeck/TBG/03._Dean_Town.mp3')
  Song.create(title: "Conscious Club", track_num: 4, duration: minutes_to_seconds('3:20'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122582/Vulfpeck/TBG/04._Conscious_Club.mp3')
  Song.create(title: "El Chepe", track_num: 5, duration: minutes_to_seconds('4:48'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122579/Vulfpeck/TBG/05._El_Chepe.mp3')
  Song.create(title: "1 for 1 DiMaggio", track_num: 6, duration: minutes_to_seconds('3:09'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122584/Vulfpeck/TBG/06._1_for_1_DiMaggio.mp3')
  Song.create(title: "Daddy He Got a Tesla", track_num: 7, duration: minutes_to_seconds('3:25'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122575/Vulfpeck/TBG/07._Daddy_He_Got_a_Tesla.mp3')
  Song.create(title: "Margery My First Car", track_num: 8, duration: minutes_to_seconds('3:51'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122581/Vulfpeck/TBG/08._Margery_My_First_Car.mp3')
  Song.create(title: "Aunt Leslie", track_num: 9, duration: minutes_to_seconds('3:49'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122582/Vulfpeck/TBG/09._Aunt_Leslie.mp3')
  Song.create(title: "Cory Wong", track_num: 10, duration: minutes_to_seconds('4:06'), album_id: Album.find_by(title: 'The Beautiful Game').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122580/Vulfpeck/TBG/10._Cory_Wong.mp3')


  Song.create(title: "Welcome to Vulf Records", track_num: 1, duration: minutes_to_seconds('2:43'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122620/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_01_Welcome_to_Vulf_Records.mp3')
  Song.create(title: "Back Pocket", track_num: 2, duration: minutes_to_seconds('3:01'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122605/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_02_Back_Pocket.mp3')
  Song.create(title: "Funky Duck", track_num: 3, duration: minutes_to_seconds('2:10'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122611/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_03_Funky_Duck.mp3')
  Song.create(title: "Rango II", track_num: 4, duration: minutes_to_seconds('4:11'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122607/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_04_Rango_II.mp3')
  Song.create(title: "Game Winner", track_num: 5, duration: minutes_to_seconds('3:32'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122617/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_05_Game_Winner.mp3')
  Song.create(title: "Walkies", track_num: 6, duration: minutes_to_seconds('1:03'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122610/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_06_Walkies.mp3')
  Song.create(title: "Christmas in L.A.", track_num: 7, duration: minutes_to_seconds('3:03'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122603/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_07_Christmas_in_L.A..mp3')
  Song.create(title: "Conscious Club (Instrumental)", track_num: 8, duration: minutes_to_seconds('3:03'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122611/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_08_Conscious_Club_Instrumental.mp3')
  Song.create(title: "Smile Meditation", track_num: 9, duration: minutes_to_seconds('4:29'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122605/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_09_Smile_Meditation.mp3')
  Song.create(title: "Guided Smile Meditation", track_num: 10, duration: minutes_to_seconds('5:09'), album_id: Album.find_by(title: 'Thrill of the Arts').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518122611/Vulfpeck/Thrill%20of%20the%20Arts/Vulfpeck_-_Thrill_of_the_Arts_-_10_Guided_Smile_Meditation.mp3')


  Song.create(title: "Addicted To A Memory [feat. Bahari]", track_num: 1, duration: minutes_to_seconds('5:03'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125754/Zedd/True%20Colors/1_Addicted_To_A_Memory.mp3')
  Song.create(title: "I Want You To Know [feat. Selena Gomez]", track_num: 2, duration: minutes_to_seconds('4:00'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125753/Zedd/True%20Colors/2_I_Want_You_To_Know.mp3')
  Song.create(title: "Beautiful Now [feat. Jon Bellion]", track_num: 3, duration: minutes_to_seconds('3:38'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125752/Zedd/True%20Colors/3_Beautiful_Now.mp3')
  Song.create(title: "Transmission [feat. Logic & X Ambassadors]", track_num: 4, duration: minutes_to_seconds('4:02'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125753/Zedd/True%20Colors/4_Transmission.mp3')
  Song.create(title: "Done With Love", track_num: 5, duration: minutes_to_seconds('4:56'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125754/Zedd/True%20Colors/5_Done_With_Love.mp3')
  Song.create(title: "True Colors", track_num: 6, duration: minutes_to_seconds('3:48'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125752/Zedd/True%20Colors/6_True_Colors.mp3')
  Song.create(title: "Straight Into The Fire", track_num: 7, duration: minutes_to_seconds('3:41'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125767/Zedd/True%20Colors/7_Straight_Into_The_Fire.mp3')
  Song.create(title: "Papercut [feat. Troye Sivan]", track_num: 8, duration: minutes_to_seconds('7:23'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125777/Zedd/True%20Colors/8_Papercut.mp3')
  Song.create(title: "Bumble Bee", track_num: 9, duration: minutes_to_seconds('4:07'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518126448/Zedd/True%20Colors/9_Bumble_Bee.mp3')
  Song.create(title: "Daisy", track_num: 10, duration: minutes_to_seconds('2:54'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518126456/Zedd/True%20Colors/10_Daisy.mp3')
  Song.create(title: "Illusion [feat. Echosmith]", track_num: 11, duration: minutes_to_seconds('6:25'), album_id: Album.find_by(title: 'True Colors').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125771/Zedd/True%20Colors/11_Illusion.mp3')


  Song.create(title: "Hourglass [feat. LIZ]", track_num: 1, duration: minutes_to_seconds('5:13'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125801/Zedd/Clarity/01_Hourglass_feat._LIZ.mp3')
  Song.create(title: "Shave It Up", track_num: 2, duration: minutes_to_seconds('3:10'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125805/Zedd/Clarity/02_Shave_It_Up.mp3')
  Song.create(title: "Spectrum [feat. Matthew Koma]", track_num: 3, duration: minutes_to_seconds('4:03'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125786/Zedd/Clarity/03_Spectrum_feat._Matthew_Koma.mp3')
  Song.create(title: "Lost At Sea [feat. Ryan Tedder]", track_num: 4, duration: minutes_to_seconds('3:45'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125791/Zedd/Clarity/04_Lost_At_Sea_feat._Ryan_Tedder.mp3')
  Song.create(title: "Clarity [feat. Foxes]", track_num: 5, duration: minutes_to_seconds('4:31'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125785/Zedd/Clarity/05_Clarity_feat._Foxes.mp3')
  Song.create(title: "Codec", track_num: 6, duration: minutes_to_seconds('6:01'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125798/Zedd/Clarity/06_Codec.mp3')
  Song.create(title: "Stache", track_num: 7, duration: minutes_to_seconds('4:04'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125782/Zedd/Clarity/07_Stache.mp3')
  Song.create(title: "Fall Into The Sky [feat. Ellie Goulding]", track_num: 8, duration: minutes_to_seconds('3:37'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125769/Zedd/Clarity/08_Fall_Into_the_Sky_feat._Ellie_Go.mp3')
  Song.create(title: "Follow You Down [feat. Bright Lights]", track_num: 9, duration: minutes_to_seconds('5:47'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125784/Zedd/Clarity/09_Follow_You_Down_feat._Bright_Lig.mp3')
  Song.create(title: "Epos", track_num: 10, duration: minutes_to_seconds('5:35'), album_id: Album.find_by(title: 'Clarity').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518125792/Zedd/Clarity/10_Epos.mp3')


  Song.create(title: "Waiting on the World to Change", track_num: 1, duration: minutes_to_seconds('3:21'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050137/John%20Mayer/01_Waiting_On_The_World_To_Change.m4a')
  Song.create(title: "I Don't Trust Myself (With Loving You)", track_num: 2, duration: minutes_to_seconds('4:52'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050142/John%20Mayer/02_I_Don_t_Trust_Myself_With_Loving.m4a')
  Song.create(title: "Belief", track_num: 3, duration: minutes_to_seconds('4:02'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050139/John%20Mayer/03_Belief.m4a')
  Song.create(title: "Gravity", track_num: 4, duration: minutes_to_seconds('4:05'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050137/John%20Mayer/04_Gravity.m4a')
  Song.create(title: "The Heart of Life", track_num: 5, duration: minutes_to_seconds('3:19'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050138/John%20Mayer/05_The_Heart_Of_Life.m4a')
  Song.create(title: "Vultures", track_num: 6, duration: minutes_to_seconds('4:11'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050141/John%20Mayer/06_Vultures.m4a')
  Song.create(title: "Stop This Train", track_num: 7, duration: minutes_to_seconds('4:45'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050141/John%20Mayer/07_Stop_This_Train.m4a')
  Song.create(title: "Slow Dancing in a Burning Room", track_num: 8, duration: minutes_to_seconds('4:02'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050135/John%20Mayer/08_Slow_Dancing_In_A_Burning_Room.m4a')
  Song.create(title: "Bold as Love", track_num: 9, duration: minutes_to_seconds('4:18'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050138/John%20Mayer/09_Bold_As_Love.m4a')
  Song.create(title: "Dreaming with a Broken Heart", track_num: 10, duration: minutes_to_seconds('4:07'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050141/John%20Mayer/10_Dreaming_With_A_Broken_Heart.m4a')
  Song.create(title: "In Repair", track_num: 12, duration: minutes_to_seconds('6:09'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050142/John%20Mayer/11_In_Repair.m4a')
  Song.create(title: "I'm Gonna Find Another You", track_num: 12, duration: minutes_to_seconds('2:43'), album_id: Album.find_by(title: 'Continuum').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518050146/John%20Mayer/12_I_m_Gonna_Find_Another_You.m4a')


  Song.create(title: "A Caminho De Casa", track_num: 1, duration: minutes_to_seconds('2:27'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135364/T-Square/A_Caminho_De_Casa.mp3')
  Song.create(title: "Despedida", track_num: 2, duration: minutes_to_seconds('4:43'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135372/T-Square/Despedida.mp3')
  Song.create(title: "Sem Parar", track_num: 3, duration: minutes_to_seconds('5:46'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518137501/T-Square/Sem_Parar.mp3')
  Song.create(title: "Toys", track_num: 4, duration: minutes_to_seconds('5:06'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135371/T-Square/Toys.mp3')
  Song.create(title: "Tempo De Ser Feliz", track_num: 5, duration: minutes_to_seconds('5:17'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135369/T-Square/Tempo_De_Ser_Feliz.mp3')
  Song.create(title: "Som Silencioso", track_num: 6, duration: minutes_to_seconds('5:43'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135370/T-Square/Som_Silencioso.mp3')
  Song.create(title: "Distancia", track_num: 7, duration: minutes_to_seconds('7:27'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135372/T-Square/Despedida.mp3')
  Song.create(title: "Amanhecer", track_num: 8, duration: minutes_to_seconds('5:02'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135370/T-Square/Amanhecer.mp3')
  Song.create(title: "Soft Madness", track_num: 9, duration: minutes_to_seconds('5:42'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135367/T-Square/Soft_Madness.mp3')
  Song.create(title: "A Farther Place", track_num: 10, duration: minutes_to_seconds('2:27'), album_id: Album.find_by(title: 'Brasil').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518135369/T-Square/A_Farther_Place.mp3')


  Song.create(title: "Collapse", track_num: 1, duration: minutes_to_seconds('1:13'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026052/Mute%20Math/01_Collapse_Album_Version.mp3')
  Song.create(title: "Typical", track_num: 2, duration: minutes_to_seconds('4:12'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026045/Mute%20Math/02_Typical_Album_Version.mp3')
  Song.create(title: "After We Have Left Our Homes", track_num: 3, duration: minutes_to_seconds('1:14'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026053/Mute%20Math/03_After_We_Have_Left_Our_Homes_Alb.mp3')
  Song.create(title: "Chaos", track_num: 4, duration: minutes_to_seconds('4:54'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026050/Mute%20Math/04_Chaos_Album_Version.mp3')
  Song.create(title: "Noticed", track_num: 5, duration: minutes_to_seconds('4:29'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026063/Mute%20Math/05_Noticed_Album_Version.mp3')
  Song.create(title: "Plan B", track_num: 6, duration: minutes_to_seconds('4:46'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026041/Mute%20Math/06_Plan_B_Album_Version.mp3')
  Song.create(title: "Stare at the Sun", track_num: 7, duration: minutes_to_seconds('4:33'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026050/Mute%20Math/07_Stare_At_The_Sun_Album_Version.mp3')
  Song.create(title: "Obsolete", track_num: 8, duration: minutes_to_seconds('4:30'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026040/Mute%20Math/08_Obsolete_Album_Version.mp3')
  Song.create(title: "Break the Same", track_num: 9, duration: minutes_to_seconds('6:00'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026061/Mute%20Math/09_Break_The_Same_Album_Version.mp3')
  Song.create(title: "You Are Mine", track_num: 10, duration: minutes_to_seconds('4:43'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026045/Mute%20Math/10_You_Are_Mine_Album_Version.mp3')
  Song.create(title: "Control", track_num: 11, duration: minutes_to_seconds('4:39'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026059/Mute%20Math/11_Control_Album_Version.mp3')
  Song.create(title: "Picture", track_num: 12, duration: minutes_to_seconds('5:26'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026048/Mute%20Math/12_Picture_Album_Version.mp3')
  Song.create(title: "Stall Out", track_num: 13, duration: minutes_to_seconds('7:10'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026049/Mute%20Math/13_Stall_Out_Album_Version.mp3')
  Song.create(title: "Reset", track_num: 14, duration: minutes_to_seconds('5:25'), album_id: Album.find_by(title: 'Mutemath').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518026049/Mute%20Math/14_Reset_Album_Version.mp3')


  Song.create(title: "Voyager (Intro)", track_num: 1, duration: minutes_to_seconds('0:45'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152952/Moonchild/01_-_Voyager_Intro.mp3')
  Song.create(title: "Cure", track_num: 2, duration: minutes_to_seconds('4:06'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152954/Moonchild/02_-_Cure.mp3')
  Song.create(title: "6AM", track_num: 3, duration: minutes_to_seconds('4:19'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152954/Moonchild/03_-_6AM.mp3')
  Song.create(title: "Every Part (For Linda)", track_num: 4, duration: minutes_to_seconds('3:36'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152954/Moonchild/04_-_Every_Part_For_Linda.mp3')
  Song.create(title: "Hideaway", track_num: 5, duration: minutes_to_seconds('3:39'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152954/Mute%20Math/05_-_Hideaway.mp3')
  Song.create(title: "The List", track_num: 6, duration: minutes_to_seconds('5:05'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152958/Moonchild/06_-_The_List.mp3')
  Song.create(title: "Doors Closing", track_num: 7, duration: minutes_to_seconds('1:24'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152960/Moonchild/07_-_Doors_Closing.mp3')
  Song.create(title: "Run Away", track_num: 8, duration: minutes_to_seconds('3:19'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152956/Moonchild/08_-_Run_Away.mp3')
  Song.create(title: "Think Back", track_num: 9, duration: minutes_to_seconds('2:56'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152953/Moonchild/09_-_Think_Back.mp3')
  Song.create(title: "Now and Then", track_num: 10, duration: minutes_to_seconds('3:57'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152957/Moonchild/10_-_Now_And_Then.mp3')
  Song.create(title: "Change Your Mind", track_num: 11, duration: minutes_to_seconds('5:12'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152960/Moonchild/11_-_Change_Your_Mind.mp3')
  Song.create(title: "Show The Way", track_num: 12, duration: minutes_to_seconds('4:22'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152960/Moonchild/12_-_Show_The_Way.mp3')
  Song.create(title: "Let You Go", track_num: 13, duration: minutes_to_seconds('3:20'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152960/Moonchild/13_-_Let_You_Go.mp3')
  Song.create(title: "Cure (Instrumental)", track_num: 14, duration: minutes_to_seconds('4:06'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152959/Moonchild/14_-_Cure_Instrumental.mp3')
  Song.create(title: "The List (Instrumental)", track_num: 15, duration: minutes_to_seconds('5:05'), album_id: Album.find_by(title: 'Voyager').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518152962/Moonchild/15_-_The_List_Instrumental.mp3')


  Song.create(title: "Choose Your Weapon", track_num: 1, duration: minutes_to_seconds('1:34'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156560/Hiatus%20Kaiyote/Choose%20Your%20Weapon/01-hiatus_kaiyote-choose_your_weapon.mp3')
  Song.create(title: "Shaolin Monk Motherfunk", track_num: 2, duration: minutes_to_seconds('5:51'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156567/Hiatus%20Kaiyote/Choose%20Your%20Weapon/02-hiatus_kaiyote-shaolin_monk_motherfunk.mp3')
  Song.create(title: "Laputa", track_num: 3, duration: minutes_to_seconds('2:26'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156565/Hiatus%20Kaiyote/Choose%20Your%20Weapon/03-hiatus_kaiyote-laputa.mp3')
  Song.create(title: "Creations Part One", track_num: 4, duration: minutes_to_seconds('0:49'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156556/Hiatus%20Kaiyote/Choose%20Your%20Weapon/04-hiatus_kaiyote-creations_part_one.mp3')
  Song.create(title: "Borderline with My Atoms", track_num: 5, duration: minutes_to_seconds('6:02'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156561/Hiatus%20Kaiyote/Choose%20Your%20Weapon/05-hiatus_kaiyote-borderline_with_my_atoms.mp3')
  Song.create(title: "Breathing Underwater", track_num: 6, duration: minutes_to_seconds('5:44'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156561/Hiatus%20Kaiyote/Choose%20Your%20Weapon/06-hiatus_kaiyote-breathing_underwater.mp3')
  Song.create(title: "Cicada", track_num: 7, duration: minutes_to_seconds('0:38'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156558/Hiatus%20Kaiyote/Choose%20Your%20Weapon/07-hiatus_kaiyote-cicada.mp3')
  Song.create(title: "Swamp Thing", track_num: 8, duration: minutes_to_seconds('5:00'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156557/Hiatus%20Kaiyote/Choose%20Your%20Weapon/08-hiatus_kaiyote-swamp_thing.mp3')
  Song.create(title: "Fingerprints", track_num: 9, duration: minutes_to_seconds('4:17'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156565/Hiatus%20Kaiyote/Choose%20Your%20Weapon/09-hiatus_kaiyote-fingerprints.mp3')
  Song.create(title: "Jekyll", track_num: 10, duration: minutes_to_seconds('5:33'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156559/Hiatus%20Kaiyote/Choose%20Your%20Weapon/10-hiatus_kaiyote-jekyll.mp3')
  Song.create(title: "Prince Minikid", track_num: 11, duration: minutes_to_seconds('2:50'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156556/Hiatus%20Kaiyote/Choose%20Your%20Weapon/11-hiatus_kaiyote-prince_minikid.mp3')
  Song.create(title: "Atari", track_num: 12, duration: minutes_to_seconds('6:09'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156564/Hiatus%20Kaiyote/Choose%20Your%20Weapon/12-hiatus_kaiyote-atari.mp3')
  Song.create(title: "By Fire", track_num: 13, duration: minutes_to_seconds('5:04'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156563/Hiatus%20Kaiyote/Choose%20Your%20Weapon/13-hiatus_kaiyote-by_fire.mp3')
  Song.create(title: "Creations Part Two", track_num: 14, duration: minutes_to_seconds('1:01'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156556/Hiatus%20Kaiyote/Choose%20Your%20Weapon/14-hiatus_kaiyote-creations_part_two.mp3')
  Song.create(title: "The Lung", track_num: 15, duration: minutes_to_seconds('4:54'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156560/Hiatus%20Kaiyote/Choose%20Your%20Weapon/15-hiatus_kaiyote-the_lung.mp3')
  Song.create(title: "Only Time All the Time: Making Friends with Studio Owl", track_num: 16, duration: minutes_to_seconds('1:03'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156556/Hiatus%20Kaiyote/Choose%20Your%20Weapon/16-hiatus_kaiyote-only_time_all_the_time_making_friends_with_studio_owl.mp3')
  Song.create(title: "Molasses", track_num: 17, duration: minutes_to_seconds('4:49'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156563/Hiatus%20Kaiyote/Choose%20Your%20Weapon/17-hiatus_kaiyote-molasses.mp3')
  Song.create(title: "Building a Ladder", track_num: 18, duration: minutes_to_seconds('5:42'), album_id: Album.find_by(title: 'Choose Your Weapon').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1518156564/Hiatus%20Kaiyote/Choose%20Your%20Weapon/18-hiatus_kaiyote-building_a_ladder.mp3')



  #Genres
  Playlist.create(title: "Alternative", description: "Somewhere between pop and rock", genre: "Alternative", user_id: 2, img_url: 'https://images.pexels.com/photos/33597/guitar-classical-guitar-acoustic-guitar-electric-guitar.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "R&B", description: "Rhythm & Blues", genre: "R&B", user_id: 2, img_url: 'https://images.pexels.com/photos/164951/pexels-photo-164951.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "Jazz", description: "Free improvisation and complex harmony", genre: "Jazz", user_id: 2, img_url: 'https://images.pexels.com/photos/164934/pexels-photo-164934.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "Pop", description: "Catchy melodies and beats", genre: "Pop", user_id: 2, img_url: 'https://images.pexels.com/photos/316163/pexels-photo-316163.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "Rock", description: "Rock 'n Roll", genre: "Rock", user_id: 2, img_url: 'https://images.pexels.com/photos/144428/pexels-photo-144428.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "Blues", description: "Raw and emotional", genre: "Blues", user_id: 2, img_url: 'https://images.pexels.com/photos/733767/pexels-photo-733767.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "Funk", description: "Get your groove on", genre: "Funk", user_id: 2, img_url: 'https://images.pexels.com/photos/96380/pexels-photo-96380.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
  Playlist.create(title: "Electronica", description: "Electronic dance music", genre: "Electronica", user_id: 2, img_url: 'https://www.snailarts.com/wp-content/uploads/2016/10/electronic-music-without-copyright.jpg')

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
  Playlist.create(title: "My Playlist 2", description: "another cool playlist", genre: "jazz", user_id: 1, img_url: 'https://images.pexels.com/photos/207247/pexels-photo-207247.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')


  #Featured
  Playlist.create(title: "Soundtracks", description: "Music from your favorite movies", genre: "Instrumental", user_id: 2, featured: true, img_url: 'https://images-na.ssl-images-amazon.com/images/I/81VnhAMhc4L._SY355_.jpg')
  Playlist.create(title: "Jazz Selections", description: "Selections of jazz music", genre: "Jazz", user_id: 2, featured: true, img_url: 'https://2b9sqw2iiqxr36ntqa1exnal-wpengine.netdna-ssl.com/wp-content/uploads/2017/12/jazz.jpg')
  Playlist.create(title: "Chillhop", description: "Chill beats", genre: "Jazz", user_id: 2, featured: true, img_url: 'https://i1.sndcdn.com/artworks-000139091822-ymuob1-t500x500.jpg')
  Playlist.create(title: "Funky Tunes", description: "Groovy tunes to get you moving", genre: "Funk", user_id: 2, featured: true, img_url: 'http://www.slopemedia.org/wp-content/uploads/2017/09/funk-what-the1.jpg')
  Playlist.create(title: "The Best of Snarky Puppy", description: "Selected tracks from Snarky Puppy's extensive discography", featured: true, genre: "Jazz", user_id: 2, img_url: 'http://www.snarkypuppy.com/media/carousel1.jpg')
  Playlist.create(title: "John Mayer's Top Hits", description: "Top Hits from John Mayer", genre: "Pop", user_id: 2, featured: true, img_url: 'https://www.thefamouspeople.com/profiles/images/john-mayer-1.jpg')

  Song.all.each do |song|
    playlist = Playlist.find_by(title: song.genre)
    if !!playlist
      PlaylistSong.create(playlist_id: playlist.id, song_id: song.id)
    end
  end

  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist").id, song_id: 1)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist").id, song_id: 2)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist").id, song_id: 5)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist").id, song_id: 8)

  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist 2").id, song_id: 3)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist 2").id, song_id: 10)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist 2").id, song_id: 12)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "My Playlist 2").id, song_id: 7)


  songs = []

  Artist.find_by(name: 'Hans Zimmer').albums.each do |album|
    album.songs.each do |song|
      songs << song
    end
  end

  songs.each do |song|
    playlist = Playlist.find_by(title: "Soundtracks")
    if !!playlist
      PlaylistSong.create(playlist_id: playlist.id, song_id: song.id)
    end
  end


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Dean Town").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Done With Love").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Clarity [feat. Foxes]").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Love Tribe (feat. Miss Vehna from Soul Trip!!) (Main Mix)").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Walk On").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Quarter Master").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Symmetrical").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Restart").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "What About Me?").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Money On My Mind").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Work Out").id, song_id: Song.find_by(title: "Control").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Neverending City").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Money in the Desert").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Gold Coast").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "The Curtain").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Chia").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Thing of Gold").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "The Good Things").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Ready Wednesday").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Flint").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Focus").id, song_id: Song.find_by(title: "Neverending City").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "83").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Like A Light").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Sleeper").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Great Indoors").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "In Repair").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Nakamarra").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Stay With Me").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Denmark Hill").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Soft Madness").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Relax").id, song_id: Song.find_by(title: "Smile Meditation").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "December in New York").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "U-Bahn").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "Audrey").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "The Heart of Life").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "Riviera Paradise").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "Gravity").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "A Place Among the Stars").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "Lenny").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Sleep").id, song_id: Song.find_by(title: "Stall Out").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Beautiful Day").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "No Such Thing").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Your Body is a Wonderland").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Walk On").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Back Pocket").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "6AM").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Aunt Leslie").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Conscious Club (Instrumental)").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Wake Up").id, song_id: Song.find_by(title: "Waiting on the World to Change").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Tempo De Ser Feliz").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Distancia").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Amanhecer").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Sem Parar").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "The World It Softly Lulls").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Toys").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Back To You").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Freezer Burn").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Illusion [feat. Echosmith]").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Cook").id, song_id: Song.find_by(title: "Daisy").id)

  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Semi-Charmed Life").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Graduate").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Tiger Eyes (feat. Monday Michiru) (English Version)").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Elevation").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Conscious Club").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "1 for 1 DiMaggio").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Superstition (Live)").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Red Sand").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "The King of Dance").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Typical").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Energy").id, song_id: Song.find_by(title: "Break the Same").id)

  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Time").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "One Simple Idea").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Lace Skull").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Circle").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "True Colors").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Mountains").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Dream Is Collapsing").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Tin Pan Alley (AKA Roughest Place in Town)").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Outlier").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Slow Dancing in a Burning Room").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Dark & Stormy").id, song_id: Song.find_by(title: "Malika").id)





  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Binky").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Thing of Gold").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "The Curtain").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Lingus").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Young Stuff").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Quarter Master").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "What About Me?").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Sintra").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Flight").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "The Best of Snarky Puppy").id, song_id: Song.find_by(title: "Atchafalaya").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Cory Wong").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Animal Spirits").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Daddy He Got a Tesla").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Funky Duck").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Back Pocket").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Quarter Master").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Fake Future").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Belief").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Red Sand").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Funky Tunes").id, song_id: Song.find_by(title: "Dean Town").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "The Rush").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Spain").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Malika").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Captain Marvel").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Shofukan").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Swift").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Lingus").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Neverending City").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Young Stuff").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Jazz Selections").id, song_id: Song.find_by(title: "Denmark Hill").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Vultures").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Your Body is a Wonderland").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Why Georgia").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "No Such Thing").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "City Love").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Waiting on the World to Change").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Gravity").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Stop This Train").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "Dreaming with a Broken Heart").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "John Mayer's Top Hits").id, song_id: Song.find_by(title: "I Don't Trust Myself (With Loving You)").id)


  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Nakamarra").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Sphynx Gate").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Cure").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "The List").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "6AM").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Let You Go").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Run Away").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Hideaway").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Fingerprints").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Molasses").id)
  PlaylistSong.create(playlist_id: Playlist.find_by(title: "Chillhop").id, song_id: Song.find_by(title: "Breathing Underwater").id)


  #img

end







