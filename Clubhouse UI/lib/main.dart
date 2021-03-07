import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/room_screen.dart';

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
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eee4),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _AppBar(),
                  const SizedBox(height: 24.0),
                  _Room(
                    title: "Stocks and Options Talk 📈📉",
                    users: 300,
                    talking: 27,
                    image1: "assets/user0.jpeg",
                    image2: "assets/user1.jpeg",
                  ),
                  const SizedBox(height: 24.0),
                  _Room(
                    title: "THE ART OF MARKETING: Mastering Social Media 📱",
                    users: 1200,
                    talking: 12,
                    image1: "assets/user3.jpeg",
                    image2: "assets/user4.jpeg",
                  ),
                  const SizedBox(height: 24.0),
                  _Room(
                    title: "Talk less, Do more 🎉🎉",
                    users: 1100,
                    talking: 67,
                    image1: "assets/user5.jpeg",
                    image2: "assets/user6.jpeg",
                  ),
                ],
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: _BottomBar()),
          ],
        ),
      ),
    );
  }
}

class _Room extends StatelessWidget {
  final String title;
  final int users;
  final int talking;
  final String image1;
  final String image2;

  const _Room(
      {Key key, this.title, this.users, this.talking, this.image1, this.image2})
      : super(key: key);

  void open(BuildContext context) {
    showModalBottomSheet(context: context, isScrollControlled: true, builder: (_) {
      return RoomScreen();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => open(context),
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: 60.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.3, 0.3),
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(image2),
                            ),
                          ),
                        ),
                        FractionalTranslation(
                          translation: Offset(-0.1, -0.1),
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(image1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20.0),
                      Text("user0 💬",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text("user2 💬",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text("user3 💬",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text("John Doe 💬",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 8.0),
                      Text("$users / $talking"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.search,
            size: 40.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.mark_email_unread_outlined, size: 40.0),
              const SizedBox(width: 24.0),
              Icon(Icons.calendar_today_outlined, size: 35.0),
              const SizedBox(width: 24.0),
              Icon(Icons.notifications_none, size: 40.0),
              const SizedBox(width: 24.0),
              SizedBox(
                height: 40.0,
                width: 40.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset("assets/user0.jpeg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xfff1eee4),
            Colors.white.withOpacity(0.1),
          ],
          stops: [0.1, 1.0],
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 60.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                color: Color(0xff39ab64),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  Text(
                    "Start a room",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowOfDots,
                    rowOfDots,
                    rowOfDots,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final rowOfDots = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    dot,
    dot,
    dot,
  ],
);

final Widget dot = Container(
  width: 8.0,
  height: 8.0,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(15.0),
  ),
);
