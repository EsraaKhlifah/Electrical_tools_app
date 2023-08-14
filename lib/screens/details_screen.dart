import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/products.dart';
import '../widget/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Products product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppar(context),
      body:detailsbody(product: product,) ,
    );
  }
}
AppBar detailsAppar(BuildContext context){
  return      AppBar(
    elevation: 0,
    backgroundColor: kBackgroundColor,
    leading: IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },      ),

    centerTitle: false,
    title: Text(
      'رجوع',
      style: Theme.of(context).textTheme.bodyText2,
    ),);

}