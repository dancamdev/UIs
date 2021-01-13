import 'package:flutter/material.dart';
import 'package:insta/helpers/size.dart';

class HorizontalScrollList extends StatelessWidget {
  HorizontalScrollList(this.albumList);

  final dynamic albumList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var album in albumList)
            Container(
              padding: EdgeInsets.only(
                left: getWidthOfDevice(context) * 0.03,
                right: getWidthOfDevice(context) * 0.04,
              ),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: album['img'],
                  ),
                  renderSizedBox(height: getHeightOfDevice(context) * 0.01),
                  Text(
                    album['text'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
