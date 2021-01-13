import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  SectionTitle(this.title);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
