import 'package:flutter/material.dart';
import 'package:grocery_store/page/home_page.dart';
import 'package:grocery_store/page/http_sample.dart';
import 'package:grocery_store/page/offer_detail.dart';
import 'package:grocery_store/page/parent_page.dart';
import 'package:grocery_store/page/products_page.dart';
import 'package:grocery_store/util/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      theme: ThemeData(
        primarySwatch: createMaterialColor(GroceryColors.green),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Gilroy',
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => SampleHttpPage(),
        '/offerDetail': (context) => OfferDetail(),
        '/productsList': (context) => ProductPage()
      },
    );
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}
