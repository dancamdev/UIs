import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _backgroundController = PageController(initialPage: 1);
  final _cardController = PageController(initialPage: 1, viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BackgroundPageView(
            controller: _backgroundController,
            cardController: _cardController,
          ),
          _CardPageView(
            controller: _cardController,
            backgroundController: _backgroundController,
          ),
        ],
      ),
    );
  }
}

class _CardPageView extends StatelessWidget {
  final PageController controller;
  final PageController backgroundController;

  const _CardPageView({Key key, this.controller, this.backgroundController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 580.0,
        child: PageView(
          controller: controller,
          onPageChanged: (page) {
            backgroundController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          children: [
            MovieCard(image: "assets/nomadland_cover.jpg", name: "Nomadland"),
            MovieCard(image: "assets/joker_cover.jpg", name: "Joker"),
            MovieCard(image: "assets/minari_cover.jpg", name: "Minari"),
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String image;
  final String name;

  const MovieCard({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55.0),
            topRight: Radius.circular(55.0),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.0),
                child: Image.asset(image),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _Tag(name: "action"),
                  _Tag(name: "drama"),
                  _Tag(name: "history"),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5.0"),
                  const SizedBox(width: 8.0),
                  Icon(Icons.star_outlined, color: Colors.yellow),
                  Icon(Icons.star_outlined, color: Colors.yellow),
                  Icon(Icons.star_outlined, color: Colors.yellow),
                  Icon(Icons.star_outlined, color: Colors.yellow),
                  Icon(Icons.star_outlined, color: Colors.yellow),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                height: 50.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    "BUY TICKET",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String name;

  const _Tag({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20.0,
            spreadRadius: 1.0,
          )
        ],
        color: Colors.white,
      ),
      child: Text(name),
    );
  }
}

class _BackgroundPageView extends StatelessWidget {
  final PageController controller;
  final PageController cardController;

  const _BackgroundPageView({Key key, this.controller, this.cardController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (page) {
        cardController.animateToPage(
          page,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      controller: controller,
      children: [
        Image.asset("assets/nomadland_background.webp", fit: BoxFit.cover),
        Image.asset("assets/joker_background.jpg", fit: BoxFit.cover),
        Image.asset("assets/minari_background.jpg", fit: BoxFit.cover),
      ],
    );
  }
}
