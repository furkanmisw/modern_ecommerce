import 'package:basic_ecommerce/const.dart';
import 'package:flutter/material.dart';

class ProductShowing extends StatelessWidget {
  ProductO data;
  ProductShowing({Key? key, required this.data}) : super(key: key);
  final String description =
      'Straight cut shirt jacket in sturdy, washed denim. Features a pointed collar and buttons down the front. Dropped shoulders and long sleeves with button cuffs. Detachable tie belt at the waist and a rounded hem.';
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Column(
          children: [
            Hero(
              tag: data.image,
              child: Image.asset(
                i + data.image,
                height: h * 48,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 31),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            data.title,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'NunitoSans',
                            ),
                          ),
                        ),
                        Text(
                          data.price,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'NunitoSans',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 54),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'DESCRIPTION',
                          style: TextStyle(
                            fontFamily: 'NunitoSans',
                            letterSpacing: 2,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          width: 13,
                          height: 2,
                          color: Color(
                            theme(lightInText, 0xffB9B9B9, context),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 135,
                      child: Text(
                        description,
                        style: const TextStyle(
                          fontSize: 17,
                          fontFamily: 'NunitoSans',
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Color(
                                  theme(lightInText, darkInText, context),
                                ),
                              ),
                            ),
                            height: 55,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    i + 'Heart.png',
                                    width: 24,
                                    color: Color(theme(
                                        lightInText, darkInText, context)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'wishlist'.toUpperCase(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'NunitoSans',
                                      fontSize: 11,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Container(
                            color:
                                Color(theme(lightInText, darkInText, context)),
                            height: 55,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    i + 'Bag.png',
                                    width: 24,
                                    color: Color(theme(
                                        darkInText, lightInText, context)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Add to bag'.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'NunitoSans',
                                      fontSize: 11,
                                      color: Color(
                                        theme(darkInText, lightInText, context),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45, left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(i + 'Back.png', height: 20),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, right: 25),
            child: Image.asset(
              i + 'Share.png',
              height: 20,
            ),
          ),
        ),
      ])),
    );
  }
}
