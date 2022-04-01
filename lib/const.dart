import 'package:basic_ecommerce/pages/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String i = 'assets/images/';
int theme(int lightInText, int darkInText, BuildContext context) =>
    Theme.of(context).scaffoldBackgroundColor == const Color(dark)
        ? darkInText
        : lightInText;
const black = 0xff000000;
const white = 0xffffffff;
const light = 0xffE5E5E5;
const dark = 0xff0C0C0C;
const darkInText = 0xffECECEC;
const lightInText = 0xff161616;
void pro(ProductO data, BuildContext context) => Navigator.push(
    context,
    CupertinoPageRoute(
        builder: (context) => ProductShowing(data: data)));
var products = [
  ProductO('Ribbed Polo-Neck Jumper', 'product1.png', '\$39.90'),
  ProductO('Oversized Shirt Jacket', 'product2.png', '\$79.90'),
  ProductO('White Cotton Tshirt', 'product3.png', '\$39.90'),
  ProductO('Light Blue Tshirt', 'product4.png', '\$39.90'),
  ProductO('Oversized Denim Jacket', '10.png', '\$67.90'),
];

class ProductO {
  String image, title, price;
  ProductO(this.title, this.image, this.price);
}
