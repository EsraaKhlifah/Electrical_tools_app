import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({Key? key, required this.fillColor, required this.isSelected}) : super(key: key);
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    )
    ;
  }
}
