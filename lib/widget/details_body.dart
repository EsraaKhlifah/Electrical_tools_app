import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/widget/product_image.dart';

import '../constant.dart';
import '../models/products.dart';
import 'colors.dart';

class detailsbody extends StatelessWidget {
  const detailsbody({Key? key, required this.product}) : super(key: key);
  final Products product;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: productimage(
                  image:product.image ,
                  size: size,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),


                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر: \$${product.price}',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(height: kDefaultPadding),


            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
      ],
    );
  }
}
