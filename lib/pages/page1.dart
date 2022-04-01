import 'package:basic_ecommerce/const.dart';
import 'package:basic_ecommerce/main.dart';
import 'package:basic_ecommerce/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var controller = PageController();
  @override
  void initState() {
    super.initState();
    controller.addListener(() => setState(() {}));
  }

  final String title = 'for the minimalists',
      second = 'Matching Simplicity and comfort\nfor your daily basic needs',
      btn1 = 'register',
      btn2 = 'log in';

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: h * 60,
            child: Stack(
              children: [
                PageView(
                  controller: controller,
                  children: [
                    Image.asset(
                      i + '1.png',
                      width: double.infinity,
                      height: h * 60,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      i + '2.png',
                      width: double.infinity,
                      height: h * 60,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      i + '3.png',
                      width: double.infinity,
                      height: h * 60,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                controller.hasClients
                    ? Align(
                        alignment: const Alignment(0, 0.9),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          GestureDetector(
                            onTap: () => setState(() =>
                                controller.animateToPage(0,
                                    curve: Curves.linear,
                                    duration:
                                        const Duration(milliseconds: 200))),
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(
                                  controller.page!.toInt() == 0
                                      ? white
                                      : 0xff868686),
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () => setState(() =>
                                controller.animateToPage(1,
                                    curve: Curves.linear,
                                    duration:
                                        const Duration(milliseconds: 200))),
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(
                                  controller.page!.toInt() == 1
                                      ? white
                                      : 0xff868686),
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () => setState(() =>
                                controller.animateToPage(2,
                                    curve: Curves.linear,
                                    duration:
                                        const Duration(milliseconds: 200))),
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(
                                  controller.page!.toInt() == 2
                                      ? white
                                      : 0xff868686),
                            ),
                          ),
                        ]),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          const Spacer(flex: 2),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 22,
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            second.toUpperCase(),
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'NunitoSans',
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 2),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'home'),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    color: Color(theme(0xff171717, white, context)),
                    borderRadius:
                        BorderRadius.circular(theme(5, 0, context).toDouble()),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      )
                    ]),
                child: Center(
                  child: Text(
                    btn1.toUpperCase(),
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NunitoSans',
                        color: Color(theme(darkInText, lightInText, context))),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'home'),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(theme(5, 0, context).toDouble()),
                  border: Border.all(
                    width: .5,
                    color: Color(
                      theme(dark, light, context),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    btn2.toUpperCase(),
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NunitoSans',
                        color: Color(theme(lightInText, darkInText, context))),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(flex: 2),
        ]),
      ),
    );
  }
}
