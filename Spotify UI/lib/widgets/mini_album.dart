import 'package:flutter/material.dart';
import 'package:insta/helpers/size.dart';
import 'package:insta/helpers/theme.dart';

class AlbumMini extends StatelessWidget {
  final String image;
  final String text;

  const AlbumMini({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(8.0);

    return Expanded(
      child: Container(
        height: getHeightOfDevice(context) * 0.08,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: getThemeOf(context).primaryColor,
          borderRadius: borderRadius,
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                child: Image.asset(
                  image,
                  filterQuality: FilterQuality.high,
                ),
              ),
              renderSizedBox(width: 8.0),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
