import 'package:basic_ecommerce/const.dart';
import 'package:basic_ecommerce/pages/collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final bigPost = 'outwear\nBy Cristian  Scarlato';
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
  Widget _categories(context) => Padding(
      padding: const EdgeInsets.only(bottom: 40, top: 28),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            CupertinoPageRoute(builder: (context) => const Collections())),
        child: Container(
          color: Colors.transparent,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'categories'.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.bold,
                color: Color(theme(lightInText, darkInText, context)),
              ),
            ),
            Image.asset(i + 'grid.png',
                width: 26,
                color: Color(theme(lightInText, darkInText, context)))
          ]),
        ),
      ));
  Widget _sliders() => Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Row(children: [
        Expanded(child: Image.asset(i + '4.png')),
        const SizedBox(width: 10),
        Expanded(child: Image.asset(i + '5.png')),
        const SizedBox(width: 10),
        Expanded(child: Image.asset(i + '6.png')),
        const SizedBox(width: 10),
        Expanded(child: Image.asset(i + '7.png'))
      ]));
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(children: [
              Hero(
                  tag: 'header',
                  child: Material(
                      color: Colors.transparent, child: _header(context))),
              _categories(context),
              _sliders(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'categories'),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending Collections'.toUpperCase(),
                        style: const TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        i + 'grid.png',
                        width: 26,
                        color: Color(theme(lightInText, darkInText, context)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: h * 50,
                child: Stack(
                  children: [
                    Image.asset(
                      i + '8.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: h * 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 3),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          bigPost.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'Halant',
                            fontSize: 34,
                            height: 1,
                            color: Color(darkInText),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: h * 50,
                child: Stack(
                  children: [
                    Image.asset(
                      i + '9.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: h * 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 3),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          bigPost.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'Halant',
                            fontSize: 34,
                            height: 1,
                            color: Color(darkInText),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ),
      ),
    );
  }
}
