import 'package:flutter/material.dart';

getHeightOfDevice(context) => MediaQuery.of(context).size.height;
getWidthOfDevice(context) => MediaQuery.of(context).size.width;
renderSizedBox({width, height}) => SizedBox(
      height: height,
      width: width,
    );
