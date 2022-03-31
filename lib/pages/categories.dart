import 'package:basic_ecommerce/const.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  Widget _header(context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          i + 'Menu.png',
          width: 26,
          color: Color(
            theme(lightInText, darkInText, context),
          ),
        ),
        Text(
          'BASICS',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'NunitoSans',
            color: Color(
              theme(lightInText, darkInText, context),
            ),
          ),
        ),
        Image.asset(i + 'Bag.png',
            width: 26,
            color: Color(
              theme(lightInText, darkInText, context),
            ))
      ]));
  Widget _first(context) => Column(children: [
        Image.asset(i + '21.png'),
        const SizedBox(height: 33),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'twenty21'.toUpperCase(),
              style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    theme(lightInText, darkInText, context),
                  )),
            ),
            Image.asset(i + 'arrow.png',
                height: 14,
                color: Color(theme(lightInText, darkInText, context))),
          ],
        ),
        const SizedBox(height: 13),
      ]);
  Widget _twenty21(context) => Column(
        children: [
          Row(
            children: [
              Expanded(child: Image.asset(i + '12.png')),
              const SizedBox(width: 22),
              Expanded(child: Image.asset(i + '13.png')),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ribbed polo-Neck Jumper',
                    style: TextStyle(
                        fontSize: 13,
                        height: 1,
                        letterSpacing: 0.1,
                        fontFamily: 'NunitoSans',
                        color: Color(theme(lightInText, darkInText, context))),
                  ),
                  const Text(
                    'Jack & James',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                        fontFamily: 'NunitoSans',
                        color: Color(0xff979797)),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$39.90',
                    style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.1,
                        fontFamily: 'NunitoSans',
                        color: Color(theme(lightInText, darkInText, context))),
                  ),
                ],
              ),
              const SizedBox(width: 22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oversized Shirt Jacket',
                    style: TextStyle(
                        fontSize: 13,
                        height: 1,
                        letterSpacing: 0.1,
                        fontFamily: 'NunitoSans',
                        color: Color(theme(lightInText, darkInText, context))),
                  ),
                  const Text(
                    'Jack & James',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                        fontFamily: 'NunitoSans',
                        color: Color(0xff979797)),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$79.90',
                    style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.1,
                        fontFamily: 'NunitoSans',
                        color: Color(theme(lightInText, darkInText, context))),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(children: [
              Hero(
                tag: 'header',
                child: Material(
                    color: Colors.transparent, child: _header(context)),
              ),
              _first(context),
              _twenty21(context),
            ]),
          ),
        ),
      ),
    );
  }
}
