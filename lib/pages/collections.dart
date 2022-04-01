import 'package:basic_ecommerce/const.dart';
import 'package:flutter/material.dart';

List<ProductO> resultItems = [
  ProductO('Ribbed Polo-Neck Jumper', 'product1.png', '\$39.90'),
  ProductO('Oversized Shirt Jacket', 'product2.png', '\$79.90'),
  ProductO('Oversized Denim Jacket', '10.png', '\$67.90'),
  ProductO('White Cotton Tshirt', 'product3.png', '\$39.90'),
];

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);
  final categoriess = const [
    'Tops',
    'Sweatshirts',
    'Jackets',
    'Pants',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Hero(
                tag: 'header',
                child: Material(
                    color: Colors.transparent, child: _header(context)),
              ),
              Row(children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search products'.toUpperCase(),
                    hintStyle: const TextStyle(
                      fontFamily: 'NunitoSans',
                      color: Color(0xff868686),
                      fontSize: 15,
                    ),
                  ),
                  style: const TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 16,
                    color: Color(0xff868686),
                  ),
                )),
                Image.asset(i + 'Filter.png', height: 25),
              ]),
              const SizedBox(height: 35),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Color(
                        theme(black, darkInText, context),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          'ALL',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'NunitoSans',
                            fontSize: 13,
                            color: Color(
                              theme(darkInText, lightInText, context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Row(
                        children:
                            categoriess.map((e) => _item(context, e)).toList()),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Row(
                children: [
                  Text(
                    'Seach Result For',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(
                        theme(0xff6C6C6C, 0xffB0B0B0, context),
                      ),
                    ),
                  ),
                  Text(
                    ' "All"',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        theme(0xff6C6C6C, 0xffB0B0B0, context),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '4 Result',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(
                        theme(0xff6C6C6C, 0xffB0B0B0, context),
                      ),
                      fontFamily: 'NunitoSans',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                    itemCount: resultItems.length,
                    itemBuilder: (c, i) =>
                        _resultItems(context, resultItems[i])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _resultItems(context, ProductO e) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        onTap: () => pro(e, context),
        child: Hero(
          tag: e.image,
          child: Material(
            color: Colors.transparent,
            child: Container(
              child: Row(children: [
                Image.asset(i + e.image, width: 126, fit: BoxFit.fitWidth),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      e.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'NunitoSans',
                        color: Color(
                          theme(lightInText, darkInText, context),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Jack & James',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'NunitoSans',
                        color: Color(
                          theme(0xff979797, 0xffD6D6D6, context),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      e.price,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NunitoSans',
                        color: Color(
                          theme(lightInText, darkInText, context),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                )
              ]),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(theme(0xffDDDDDD, 0xff303030, context)))),
              height: 110,
            ),
          ),
        ),
      ),
    );
Widget _item(context, text) => Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.7,
            color: Color(
              theme(0xffC7C7C7, 0xffAAAAAA, context),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              fontSize: 13,
              color: Color(
                theme(lightInText, darkInText, context),
              ),
            ),
          ),
        ),
      ),
    );
Widget _header(context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 32),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(i + 'Menu.png',
          width: 26, color: Color(theme(lightInText, darkInText, context))),
      Text('BASICS',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'NunitoSans',
              color: Color(theme(lightInText, darkInText, context)))),
      Image.asset(i + 'Bag2.png',
          width: 26,
          color: Color(
            theme(lightInText, darkInText, context),
          ))
    ]));
