import 'package:basic_ecommerce/const.dart';
import 'package:basic_ecommerce/pages/categories.dart';
import 'package:basic_ecommerce/pages/home.dart';
import 'package:basic_ecommerce/pages/page1.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Ma());

class Ma extends StatelessWidget {
  const Ma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => const Home(),
        'categories': (context) => const Categories(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(backgroundColor: const Color(white)),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(dark),
        colorScheme:
            const ColorScheme.dark().copyWith(secondary: Colors.transparent),
      ),
       home: const Page1(),      
    );
  }
}
