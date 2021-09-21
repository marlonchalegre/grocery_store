import 'package:flutter/material.dart';
import 'package:grocery_store/util/colors.dart';
import 'package:grocery_store/widget/category_widget.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          children: [
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
            ),
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
            ),
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
            ),
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
            ),
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
            ),
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
            ),
            CategoryWidget(
              path: 'assets/images/apple.png',
              name: 'Frash Fruits & Vegetable',
              borderColor: GroceryColors.greenx70,
              backgroundColor: GroceryColors.greenx10,
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