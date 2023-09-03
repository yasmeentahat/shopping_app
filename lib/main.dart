import 'package:flutter/material.dart';
import 'package:shopping_app/pages/HomePage.dart';
import 'package:shopping_app/pages/ItemPage.dart';
import 'package:shopping_app/pages/cartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => cartPage(),
        "itemPage": (context) => ItemPage()
      },
    );
  }
}
