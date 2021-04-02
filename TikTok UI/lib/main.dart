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
        fontFamily: GoogleFonts.roboto().fontFamily,
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: _CreateButton(),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: "Me",
          ),
        ],
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: [
            Image.asset("assets/0.gif", fit: BoxFit.cover),
            Image.asset("assets/1.gif", fit: BoxFit.cover),
            Image.asset("assets/0.gif", fit: BoxFit.cover),
            Image.asset("assets/1.gif", fit: BoxFit.cover),
            Image.asset("assets/0.gif", fit: BoxFit.cover),
            Image.asset("assets/1.gif", fit: BoxFit.cover),
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: _Description(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: _Icons(),
        ),
      ],
    );
  }
}

class _Icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _ProfileIcon(),
          const SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/heart.png"),
                const SizedBox(height: 8.0),
                Text(
                  "302.2K",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          _Button(
            icon: Icons.chat,
            text: "2381",
          ),
          const SizedBox(height: 24.0),
          _Button(
            icon: Icons.share_rounded,
            text: "2000",
          ),
          const SizedBox(height: 24.0), 
          _MusicButton(),
        ],
      ),
    );
  }
}

class _MusicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff333333),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Color(0xffe2bc3b),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final IconData icon;
  final String text;

  const _Button({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 40.0, color: Colors.white),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _ProfileIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 60.0,
      child: Stack(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60.0),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                color: Color(0xfff73859),
                borderRadius: BorderRadius.circular(60.0),
              ),
              child: Center(
                child: Icon(Icons.add, color: Colors.white, size: 23.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "@dancamdev",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "Some random reel taken from ig! Reelsception!\n#whatever #hashtags #dont #matter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.music_note, color: Colors.white, size: 20.0),
              const SizedBox(width: 16.0),
              Text("This is the song name",
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 40.0,
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff38d2e9),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(4.0, 4.0),
                      topLeft: Radius.elliptical(4.0, 4.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfff4356d),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(4.0, 4.0),
                      topRight: Radius.elliptical(4.0, 4.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.elliptical(4.0, 4.0),
                ),
              ),
            ),
          ),
          Center(
            child: Icon(Icons.add, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
