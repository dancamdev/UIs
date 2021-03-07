import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff1eee4),
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            const _TopBar(),
            const SizedBox(height: 40.0),
            Expanded(child: const _MainView()),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child:
                      Icon(Icons.chevron_left, color: Colors.black, size: 40.0),
                ),
                Text(
                  "All rooms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.sd_card_alert_outlined, size: 35.0),
                const SizedBox(width: 24.0),
                SizedBox(
                  height: 35.0,
                  width: 35.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset("assets/user0.jpeg"),
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

class _MainView extends StatelessWidget {
  const _MainView();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome to clubhouse 🎉",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Icon(Icons.more_horiz, color: Colors.black, size: 35.0),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (_, index) => _User(
                  name: "user$index",
                  image: "assets/user$index.jpeg",
                ),
              ),
            ),
            const _BottomBar(),
          ],
        ),
      ),
    );
  }
}

class _User extends StatelessWidget {
  final String name;
  final String image;

  const _User({Key key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 90.0,
          width: 90.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.asset(image),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(name)
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0, left: 16.0, right: 16.0),
      child: Container(
        height: 90.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Center(
                child: Text(
                  "✌️ Leave quietly",
                  style: TextStyle(
                    color: Color(0xffe75b5b),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Icon(Icons.add, size: 30.0),
                  ),
                ),
                const SizedBox(width: 24.0),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text(
                      "✋🏻",
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
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
