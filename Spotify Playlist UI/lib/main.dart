import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        canvasColor: Color(0xff282828),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined, color: Colors.white),
            label: "Library",
          ),
        ],
      ),
      body: Column(
        children: [
          _Header(),
          _PlaylistControls(),
          Expanded(child: _Tracks()),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xffea3933),
            const Color(0xffea3933),
            const Color(0xff121212),
          ],
          stops: [0.1, 0.3, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: 40.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 60.0,
                        spreadRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Image.asset('assets/lofi.png'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _AlbumInfo(),
            ),
          ],
        ),
      ),
    );
  }
}

class _AlbumInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lofi hip hop music - beats to relax/study to",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "A daily selection of chill beats - perfect to help you relax & study",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "5.136.792 likes - 11h 57m",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlaylistControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation: Offset(0.0, -0.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite, color: Colors.white, size: 30.0),
                const SizedBox(width: 16.0),
                Icon(Icons.more_horiz_outlined,
                    color: Colors.white, size: 30.0),
              ],
            ),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xff57b561),
              ),
              child: Icon(Icons.play_arrow, color: Colors.white, size: 40.0),
            ),
          ],
        ),
      ),
    );
  }
}

class _Tracks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _Track(
            title: "Snowman",
            artist: "WYS",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Lunar Eclipse",
            artist: "Purrple Cat",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Going South",
            artist: "Blumen",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Snowman",
            artist: "WYS",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Lunar Eclipse",
            artist: "Purrple Cat",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Going South",
            artist: "Blumen",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Snowman",
            artist: "WYS",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Lunar Eclipse",
            artist: "Purrple Cat",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Going South",
            artist: "Blumen",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Snowman",
            artist: "WYS",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Lunar Eclipse",
            artist: "Purrple Cat",
            cover: "assets/lofi.png",
          ),
          _Track(
            title: "Going South",
            artist: "Blumen",
            cover: "assets/lofi.png",
          ),
        ],
      ),
    );
  }
}

class _Track extends StatelessWidget {
  final String title;
  final String artist;
  final String cover;

  const _Track({
    this.title,
    this.artist,
    this.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: SizedBox(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(cover, height: 52.0, width: 52.0),
                  const SizedBox(width: 16.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        artist,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz_outlined, color: Colors.white, size: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
