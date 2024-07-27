import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart.dart';
import 'package:sneakers_shop/pages/intro_page.dart';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/homepage': (context) => HomePage(),
          '/shoppage': (context) => ShopPage(),
          '/cartpage': (context) => CartPage(),
        },
      ),
    );
  }
}
