import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/constant.dart';

import '../../models/products.dart';
import '../../screens/details_screen.dart';
import '../product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Column(
      children: [
        SizedBox(height: kDefaultPadding / 2),
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70.0),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            ListView.builder(
                itemCount: products.length,

                itemBuilder: (context, index) => productCard(itemIndex: index, product:products[index], 
                  press: () { Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context)=>DetailsScreen(product:products[index],))); } ,))
          ],
        ))
      ],
    ));
  }
}
