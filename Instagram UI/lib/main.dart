import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

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
        canvasColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "reel",
            icon: Icon(Icons.video_call),
          ),
          BottomNavigationBarItem(
            label: "shop",
            icon: Icon(Icons.shop_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Image.asset(
                    'assets/instagram.png',
                    color: Colors.white,
                    width: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      const SizedBox(width: 8.0),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 130.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Story(
                        image: "assets/users/0.jpeg",
                        name: "user1",
                      ),
                      const SizedBox(width: 16.0),
                      Story(
                        image: "assets/users/1.jpeg",
                        name: "user2",
                      ),
                      const SizedBox(width: 16.0),
                      Story(
                        image: "assets/users/2.jpeg",
                        name: "user3",
                      ),
                      const SizedBox(width: 16.0),
                      Story(
                        image: "assets/users/0.jpeg",
                        name: "user1",
                      ),
                      const SizedBox(width: 16.0),
                      Story(
                        image: "assets/users/1.jpeg",
                        name: "user2",
                      ),
                      const SizedBox(width: 16.0),
                      Story(
                        image: "assets/users/2.jpeg",
                        name: "user3",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 2.0,
              color: Colors.white.withOpacity(0.2),
            ),
            Expanded(
              child: ListView(
                children: [
                  Post(
                    userName: 'dancamdev',
                    userImage: 'assets/users/dancamdev.png',
                    image: 'assets/posts/0.png',
                  ),
                  Post(
                    userName: 'dancamdev',
                    userImage: 'assets/users/dancamdev.png',
                    image: 'assets/posts/1.png',
                  ),
                  Post(
                    userName: 'dancamdev',
                    userImage: 'assets/users/dancamdev.png',
                    image: 'assets/posts/2.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  final String image;
  final String name;

  const Story({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: instagramColors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          padding: const EdgeInsets.all(3.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(image),
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}

class Post extends StatelessWidget {
  final String userImage;
  final String userName;
  final String image;

  const Post({
    Key key,
    this.userName,
    this.userImage,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.asset(userImage),
                      ),
                    ),
                  ),
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            image,
            filterQuality: FilterQuality.high,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/heart.png',
                    color: Colors.white,
                    height: 30.0,
                  ),
                  const SizedBox(width: 16.0),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  const SizedBox(width: 16.0),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Liked by dancamdev and thousands of others",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "dancamdev Today's Progress!...",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Show comments",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "21 minutes ago",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
              fontSize: 10.0,
            ),
          ),
        )
      ],
    );
  }
}
