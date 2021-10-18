import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            padding: EdgeInsets.only(
              top: size.height * 0.12,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            height: 500,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                ColorAndSize(product: product),
                Description(product: product),
                CartCounter(product: product),
              ],
            ),
          ),
          ProductTitleWithImage(product: product),
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  final Product product;

  const CartCounter({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        SizedBox(
          width: 40,
          height: 32,
          // child: OutlineButton(
          //   padding: EdgeInsets.zero,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(13),
          //   ),
          //   onPressed: () {},
          //   child: Icon(Icons.remove),
          // ),
        ),
      ],
    );
  }
}
