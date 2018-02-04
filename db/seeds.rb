# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def minutes_to_seconds(string)
  string.split(':').map { |el| el.to_i }.inject(0) { |acc, el| acc * 60 + el}
end


User.create(username: "guest", email: "guest@example.com", password: "password")
User.create(username: "candra", email: "candratran@gmail.com", password: "password")
User.create(username: "eddy", email: "edwinshin@gmail.com", password: "password")

Artist.create(name: "Snarky Puppy", genre: "Jazz", img_url: 'http://www.snarkypuppy.com/media/logo.png', description: "Fusion-influenced jam band Snarky Puppy make exploratory jazz, rock, and funk. Formed in Denton, Texas in 2004, the group features a wide-ranging assemblage of musicians known affectionately as \"the Fam,\" centered around bassist and leader Michael League. They debuted with the concert album Live at Uncommon Ground in 2005. Since then, the band has built up a loyal following with a steady touring schedule and a handful of well-received albums including The Only Constant (2006), The World Is Getting Smaller (2007), Bring Us the Bright (2008), Tell Your Friends (2010), and groundUP (2012). In 2013, Snarky Puppy released the album Family Dinner, Vol. 1, which featured a cover of Brenda Russell's \"Something.\" The song proved a hit and propelled the album up various digital download charts. In 2014, they shared a Grammy Award for Best R&B Performance for the song, and recorded the live We Like It Here in Utrecht, Netherlands. The set was released on Ropeadope.

Snarky Puppy next signed to Impulse! and released Sylva, a collaboration with the Netherlands-based Metropole Orkest. The album was greeted enthusiastically by the international press and won the band its second Grammy, this time for Best Contemporary Instrumental Album, at the 2016 Grammy Awards. They followed it with two live documents. The first was World Tour, a 32-disc box featuring their 16 favorite concerts. The deluxe package was sold exclusively through their website. Also in early 2016, they issued the audio-video set Family Dinner, Vol. 2, a documentary follow-up to the first Family Dinner recorded the preceding year. It showcased the band during a concert (and included guests Charlie Hunter, Susana Baca, Salif Keita, and David Crosby), in interviews, and in backstage sequences. In April 2016, Snarky Puppy struck again with Culcha Vulcha, their 11th studio album and first solely studio-based production in eight years. It topped the jazz album charts the week of its release and took home the prize for Best Contemporary Instrumental Album at the 2017 Grammy Awards.")

Artist.create(name: "Hiatus Kaiyote", genre: "Jazz", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/media/hiatus-kaiyote-press-2014-billboard-650.jpg')
Artist.create(name: "Moonchild", genre: "Jazz", img_url: 'https://f4.bcbits.com/img/0009860726_10.jpg')
Artist.create(name: "John Mayer", genre: "Pop", img_url: 'https://www.billboard.com/files/media/john-mayer-aug-2017-billboard-1548.jpg')
Artist.create(name: "Hans Zimmer", genre: "Instrumental", img_url: 'https://www.billboard.com/files/media/Hans-Zimmer-cr-Zoe-Zimmer-2016-billboard-1548.jpg')
Artist.create(name: "Chick Corea", genre: "Jazz", img_url: 'http://www.theshedd.org/uh/scaleimage.ashx?id=7383&width=400')
Artist.create(name: "Bill Laurance", genre: "Jazz/Instrumental", img_url: 'https://voting.mobo.com/sites/default/files/bill%20laurence%20d.jpg')
Artist.create(name: "Allen Stone", genre: "R&B/Soul", img_url: 'https://www.out.com/sites/out.com/files/2016/03/15/allen-stone.jpg')


Album.create(title: "We Like It Here", year: 2014, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41m1ZveietL.jpg', description: 'From the moment Snarky Puppy played its first overseas show to a sold-out London crowd, they felt at home in Europe. Recorded and filmed live with a studio audience over 4 nights in the Netherlands, \'We Like It Here\' captures the band at its most explorative point in its career, in both composition and improvisation. ')
Album.create(title: "Ground Up", year: 2012, artist_id: Artist.find_by(name: 'Snarky Puppy').id, img_url: 'https://images-na.ssl-images-amazon.com/images/I/51Bx2nsBpRL.jpg')
Album.create(title: "Tawk Tomahawk", year: 2012, artist_id: Artist.find_by(name: 'Hiatus Kaiyote').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/c_scale,w_400/v1517354552/front_vykr0f.jpg')
Album.create(title: "Flint", year: 2014, artist_id: Artist.find_by(name: 'Bill Laurance').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/v1517654960/Bill%20Laurance/cover_fbgyh5.jpg')
Album.create(title: "Swift", year: 2015, artist_id: Artist.find_by(name: 'Bill Laurance').id, img_url: 'http://res.cloudinary.com/masag0/image/upload/v1517654977/Bill%20Laurance/cover_y74ulu.jpg')



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

#get actual track links
Song.create(title: "Shofukan", track_num: 1, duration: minutes_to_seconds('6:33'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728588/01_Shofukan_ujc61h.mp3')
Song.create(title: "What About Me?", track_num: 2, duration: minutes_to_seconds('6:42'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728596/02_What_About_Me-_w2tthg.mp3')
Song.create(title: "Sleeper", track_num: 3, duration: minutes_to_seconds('6:51'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728592/03_Sleeper_valykk.mp3')
Song.create(title: "Jambone", track_num: 4, duration: minutes_to_seconds('5:07'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728629/04_Jambone_r1awlz.mp3')
Song.create(title: "Kite", track_num: 5, duration: minutes_to_seconds('6:12'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728630/05_Kite_qxxgkl.mp3')
Song.create(title: "Outlier", track_num: 6, duration: minutes_to_seconds('6:45'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728590/06_Outlier_o2w2q0.mp3')
Song.create(title: "Tio Macaco", track_num: 7, duration: minutes_to_seconds('5:43'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728632/07_Tio_Macaco_eguhjt.mp3')
Song.create(title: "Lingus", track_num: 8, duration: minutes_to_seconds('10:45'), album_id: Album.find_by(title: 'We Like It Here').id ,link: 'http://res.cloudinary.com/masag0/video/upload/v1517728623/08_Lingus_xyqjwh.mp3')


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



Playlist.create(title: "My Playlist", description: "a cool playlist", genre: "jazz", user_id: 1, img_url: 'https://images.unsplash.com/photo-1479030160180-b1860951d696?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fbee86d97118ec6673c8d850c31787ef&auto=format&fit=crop&w=2250&q=80')
Playlist.create(title: "My Playlist 2", description: "another cool playlist", genre: "jazz", user_id: 1, img_url: 'https://images.unsplash.com/photo-1517021202682-f4c63173f1b2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f535f650a9d98d1c62c3ace97040c869&auto=format&fit=crop&w=1319&q=80')
Playlist.create(title: "Chillhop", description: "Chill beats", genre: "Chillhop", user_id: 1, img_url: 'https://images.unsplash.com/photo-1485609315582-cfffa02888e8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=198b84c8aef298d9eebac897a98cc83d&auto=format&fit=crop&w=2250&q=80')



PlaylistSong.create(playlist_id: 1, song_id: 1)
PlaylistSong.create(playlist_id: 1, song_id: 2)
PlaylistSong.create(playlist_id: 1, song_id: 5)
PlaylistSong.create(playlist_id: 1, song_id: 8)

PlaylistSong.create(playlist_id: 2, song_id: 3)
PlaylistSong.create(playlist_id: 2, song_id: 10)
PlaylistSong.create(playlist_id: 2, song_id: 12)
PlaylistSong.create(playlist_id: 2, song_id: 7)



#img







