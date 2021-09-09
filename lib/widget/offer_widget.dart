import 'package:flutter/material.dart';
import 'package:grocery_store/util/colors.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GroceryColors.grey)),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "+",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(GroceryColors.green),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: GroceryColors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
