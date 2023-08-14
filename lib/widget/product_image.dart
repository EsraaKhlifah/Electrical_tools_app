import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class productimage extends StatelessWidget {
  const productimage({Key? key, required this.size, required this.image}) : super(key: key);
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return           Container(
      margin:EdgeInsets.symmetric(vertical: kDefaultPadding) ,
      height: size.width*.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(height: size.width *.7,
            width: size.width*.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset( image, height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,)


        ],),

    )
    ;
  }
}
