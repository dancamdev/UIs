import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          "Now showing",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60.0),
              child: Image.asset("assets/simo.png"),
            ),
          ),
          SizedBox(width: 8.0),
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30.0,
          ),
          SizedBox(width: 8.0),
        ],
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
            child: Row(
              children: [
                Text(
                  "Movies in Rome",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          ),

          // Carousel
          _Carousel(),

          // All movies
          Text(
            "All movies",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8.0),

          SizedBox(
            height: 200,
            child: ListView(
              itemExtent: 110,
              scrollDirection: Axis.horizontal,
              children: [
                _MovieListTile(
                  image: "assets/irishman.png",
                  title: "The irishman",
                  length: "3h 29min",
                ),
                _MovieListTile(
                  image: "assets/captain.png",
                  title: "Captain Phillips",
                  length: "2h 14min",
                ),
                _MovieListTile(
                  image: "assets/mile22.png",
                  title: "Mile 22",
                  length: "1h 34min",
                ),
                _MovieListTile(
                  image: "assets/majorgrom.png",
                  title: "Major Grom",
                  length: "2h 18min",
                ),
                _MovieListTile(
                  image: "assets/irishman.png",
                  title: "The irishman",
                  length: "3h 29min",
                ),
                _MovieListTile(
                  image: "assets/captain.png",
                  title: "Captain Phillips",
                  length: "2h 14min",
                ),
                _MovieListTile(
                  image: "assets/mile22.png",
                  title: "Mile 22",
                  length: "1h 34min",
                ),
                _MovieListTile(
                  image: "assets/majorgrom.png",
                  title: "Major Grom",
                  length: "2h 18min",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Carousel extends StatelessWidget {
  const _Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: _MovieCard(image: "assets/karatekid.png", height: 350),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: _MovieCard(image: "assets/suburra.png", height: 400),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: _MovieCard(image: "assets/interstellar.png", height: 450),
          ),
        ],
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  final String image;
  final double height;

  const _MovieCard({
    Key? key,
    required this.image,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 30.0,
              blurRadius: 60.0,
            ),
          ],
        ),
        height: height,
        width: height / 4 * 2.7,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}

class _MovieListTile extends StatelessWidget {
  final String image;
  final String title;
  final String length;

  const _MovieListTile({
    Key? key,
    required this.image,
    required this.title,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 130.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 4.0),
          Flexible(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: Text(
              length,
            ),
          ),
        ],
      ),
    );
  }
}
