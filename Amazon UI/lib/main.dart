import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AppBar(),
          _PrimeToggleBar(),
          _Results(),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff88d7de), Color(0xffa8e4cc)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      height: 200.0,
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 60.0,
              child: Row(
                children: [
                  const SizedBox(width: 8.0),
                  Icon(Icons.arrow_back, size: 30.0),
                  const SizedBox(width: 8.0),
                  Expanded(child: _SearchBar()),
                  const SizedBox(width: 16.0),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(Icons.place_outlined),
                  SizedBox(width: 8.0),
                  Text("Deliver to Daniele - Rome 00100",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 4.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(width: 8.0),
            Icon(Icons.camera_alt_outlined, color: Colors.grey),
            SizedBox(width: 8.0),
            Icon(Icons.mic, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _PrimeToggleBar extends StatefulWidget {
  const _PrimeToggleBar({Key? key}) : super(key: key);

  @override
  __PrimeToggleBarState createState() => __PrimeToggleBarState();
}

class __PrimeToggleBarState extends State<_PrimeToggleBar> {
  bool _primeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Image.asset("assets/prime.png", height: 25.0),
          Switch(
              value: _primeEnabled,
              onChanged: (value) => setState(() => _primeEnabled = value)),
          Expanded(child: SizedBox()),
          DropdownButton(
            items: [],
            hint: Text(
              "Filters",
              style: TextStyle(color: Color(0xff59918f)),
            ),
          ),
        ],
      ),
    );
  }
}

class _Results extends StatelessWidget {
  const _Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "RESULTS",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 8.0),
                    _Item(
                      image: "assets/dot4.png",
                      title:
                          "Echo Dot (4th generation) | Smart speaker with Alexa | White",
                      price: "29,99€",
                    ),
                    const SizedBox(height: 8.0),
                    _Item(
                      image: "assets/dot3.png",
                      title:
                          "Echo Dot (3rd Gen) - Smart speaker with Alexa - Charcoal Fabric",
                      price: "21,99€",
                    ),
                    const SizedBox(height: 8.0),
                    _Item(
                      image: "assets/show5.png",
                      title:
                          "Echo Show 5 (1st Gen) - Smart speaker with Alexa - Charcoal Fabric",
                      price: "29,99€",
                    ),
                    const SizedBox(height: 8.0),
                    _Item(
                      image: "assets/show8.png",
                      title:
                          "Echo Show 8 (1st Gen) - Smart speaker with Alexa - Charcoal Fabric",
                      price: "29,99€",
                    ),
                    const SizedBox(height: 8.0),
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

class _Item extends StatelessWidget {
  const _Item({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Image.asset(image, fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    child: Row(
                      children: [
                        Icon(Icons.star_rate,
                            color: Color(0xffe39034), size: 20.0),
                        Icon(Icons.star_rate,
                            color: Color(0xffe39034), size: 20.0),
                        Icon(Icons.star_rate,
                            color: Color(0xffe39034), size: 20.0),
                        Icon(Icons.star_rate,
                            color: Color(0xffe39034), size: 20.0),
                        Icon(Icons.star_half,
                            color: Color(0xffe39034), size: 20.0),
                        Text("139,406"),
                      ],
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 150.0,
                    color: Color(0xffb22e1e),
                    child: Center(
                      child: Text(
                        "Limited time deal",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    price,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    "Get it Friday, Sep 3",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
