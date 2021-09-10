import 'package:flutter/material.dart';
import 'package:grocery_store/model/offer.dart';
import 'package:grocery_store/util/colors.dart';
import 'package:grocery_store/widget/offer_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

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
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                filled: true,
                fillColor: GroceryColors.lightGrey,
                hintText: "Search Store",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                enabledBorder: textFieldDecoration(),
                focusedBorder: textFieldDecoration(),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Offer",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: GroceryColors.blackThatsNotBlack,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: GroceryColors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return OfferWidget(
                    offer: offers[index],
                  );
                },
                itemCount: offers.length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder textFieldDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: Colors.white,
        width: 0,
      ),
    );
  }
}
