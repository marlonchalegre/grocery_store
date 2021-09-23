import 'package:flutter/material.dart';
import 'package:grocery_store/model/offer.dart';
import 'package:grocery_store/widget/offer_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  static final offers = [
    Offer(
        name: "Organic Bananas",
        description: "7pcs, Priceg",
        price: 4.99,
        imagePath: 'assets/images/banana.png'),
    Offer(
        name: "Apple",
        description: "1Kg, Priceg",
        price: 5.99,
        imagePath: 'assets/images/apple.png'),
    Offer(
        name: "Ginger",
        description: "250gm, Priceg",
        price: 3.99,
        imagePath: 'assets/images/ginger.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var type = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(type),
      ),
      body: Container(
        child: convertToOfferWidget(),
      ),
    );
  }

  GridView convertToOfferWidget() {
    return GridView.count(
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 2,
      children: offers.map((offer) => OfferWidget(offer: offer)).toList(),
    );
  }
}
