import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const buddyfitTitle = "Workout at home with our trainers!";
const buddyfitDescription =
    "Buddyfit is the first app that allows everyone to workout from home";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        children: [
          const SizedBox(height: 24.0),
          _TopBar(),
          _Content(),
        ],
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FRIDAY 14 MAY",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                "Today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Color(0xff222222),
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Icon(CupertinoIcons.profile_circled, size: 40.0),
          ),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CRTurns2(),
              _DontMiss(),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Buddyfit(),
              _AppleArcade(),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CRTurns2(),
              _DontMiss(),
            ],
          ),
        ],
      ),
    );
  }
}

class _CRTurns2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 40;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width,
        height: width / 2 * 2.5,
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage("assets/cr_comm.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 32.0),
                  child: Text(
                    "ANNIVERSARY EVENT",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Clash Royale turns 10!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xff222222),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/cr.png", height: 60.0),
                    const SizedBox(width: 16.0),
                    Text(
                      "Clash Royale",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Color(0xff343434),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Text(
                          "GET",
                          style: TextStyle(color: Color(0xff2284fa)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DontMiss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 40;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width,
        height: width / 2 * 2.5,
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 32.0),
                  child: Text(
                    "LIMITED-TIME EVENT",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Don't miss these gaming events",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  children: [
                    Image.asset("assets/cr.png", height: 60.0),
                    Image.asset("assets/ab.png", height: 60.0),
                    Image.asset("assets/poke.png", height: 60.0),
                    Image.asset("assets/ab.png", height: 60.0),
                    Image.asset("assets/poke.png", height: 60.0),
                    Image.asset("assets/cr.png", height: 60.0),
                    Image.asset("assets/poke.png", height: 60.0),
                    Image.asset("assets/ab.png", height: 60.0),
                    Image.asset("assets/cr.png", height: 60.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Buddyfit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 40;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width,
        height: width / 2 * 2.5,
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage("assets/bf_comm.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 32.0),
                  child: Text(
                    "BEHIND THE APP",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    buddyfitTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AppleArcade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 40;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width,
        height: width / 2 * 2.5,
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 32.0),
                  child: Text(
                    "APPLE ARCADE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Top Apple Arcade games this week",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    _ListItem(
                      icon: "assets/cr.png",
                      title: "Clash Royale",
                    ),
                    _ListItem(
                      icon: "assets/poke.png",
                      title: "Pokemon Go",
                    ),
                    _ListItem(
                      icon: "assets/ab.png",
                      title: "Angry Birds",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final String icon;
  final String title;

  const _ListItem({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 4.0),
        Container(
          height: 60.0,
          child: Row(
            children: [
              Image.asset(icon, height: 60.0),
              const SizedBox(width: 16.0),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Expanded(child: SizedBox()),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: Color(0xff343434),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Text(
                    "GET",
                    style: TextStyle(color: Color(0xff2284fa)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          height: 0.5,
          width: 210.0,
          color: Colors.white.withOpacity(0.5),
        ),
      ],
    );
  }
}
