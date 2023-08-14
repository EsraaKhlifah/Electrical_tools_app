import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import '../widget/home/home_body.dart';

class HomeSccreen extends StatelessWidget {
  const HomeSccreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),

      body: HomeBody(),
    );
  }
}
AppBar homeAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Text(
      'مرحبا بكم بمتجر الالكترونيات',
      style: GoogleFonts.getFont('Almarai'),
    ),
    centerTitle: false,
    actions: [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    ],
  );
}