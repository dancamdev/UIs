import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/helpers/size.dart';
import 'package:insta/helpers/theme.dart';
import 'package:insta/widgets/mini_album.dart';
import 'package:insta/widgets/mini_album_list.dart';
import 'package:insta/widgets/horizontal_scroll_list.dart';
import 'package:insta/widgets/shared/section_title.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color(0xFF191919),
        primaryColor: Color(0xFF313132),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<AlbumMini> miniAlbumList = [
    AlbumMini(
      image: 'assets/kendrick.jpg',
      text: "Kendrick\nLamar",
    ),
    AlbumMini(
      image: 'assets/damn.jpg',
      text: "Damn",
    ),
    AlbumMini(
      image: 'assets/jcole.jpg',
      text: "J. Cole",
    ),
    AlbumMini(
      image: 'assets/lofi.jpeg',
      text: "Lo-Fi Beats",
    ),
  ];

  final recentlyPlayed = [
    {
      "img": ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: Image.asset(
          'assets/kendrick.jpg',
          filterQuality: FilterQuality.high,
        ),
      ),
      "text": "Kendrick Lamar",
    },
    {
      "img": Image.asset(
        'assets/damn.jpg',
        filterQuality: FilterQuality.high,
      ),
      "text": "Damn",
    },
    {
      "img": Image.asset(
        'assets/2014.jpg',
        filterQuality: FilterQuality.high,
      ),
      "text": "J. Cole - 2014...",
    }
  ];

  final recommendedForYou = [
    {
      "img": Image.asset(
        'assets/top50global.PNG',
        filterQuality: FilterQuality.high,
      ),
      "text": "Top 50 Global",
    },
    {
      "img": Image.asset(
        'assets/summerRewind.PNG',
        filterQuality: FilterQuality.high,
      ),
      "text": "Summer Rewind",
    },
    {
      "img": Image.asset(
        'assets/top50italy.PNG',
        filterQuality: FilterQuality.high,
      ),
      "text": "Top 50 Italy",
    }
  ];

  renderSettingsIcon() => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(Icons.settings_outlined),
      );

  renderBottomNav() => BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Premium",
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getThemeOf(context).canvasColor,
      appBar: AppBar(
        backgroundColor: getThemeOf(context).canvasColor,
        elevation: 0,
        actions: [renderSettingsIcon()],
      ),
      bottomNavigationBar: renderBottomNav(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle("Good afternoon"),
            MiniAlbumList(miniAlbumList),
            SectionTitle("Recently played"),
            renderSizedBox(height: 24.0),
            HorizontalScrollList(recentlyPlayed),
            renderSizedBox(height: 24.0),
            SectionTitle("Recommended for you"),
            renderSizedBox(height: 24.0),
            HorizontalScrollList(recommendedForYou),
          ],
        ),
      ),
    );
  }
}
