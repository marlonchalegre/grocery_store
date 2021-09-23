import 'package:flutter/material.dart';
import 'package:grocery_store/util/colors.dart';
import 'package:grocery_store/widget/category_widget.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
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
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                scrollDirection: Axis.vertical,
                children: [
                  CategoryWidget(
                    path: 'assets/images/apple.png',
                    name: 'Fruits & Vegetable',
                    borderColor: GroceryColors.greenx70,
                    backgroundColor: GroceryColors.greenx10,
                  ),
                  CategoryWidget(
                    path: 'assets/images/banana.png',
                    name: 'Cooking',
                    borderColor: GroceryColors.greenx70,
                    backgroundColor: GroceryColors.greenx10,
                  ),
                  CategoryWidget(
                    path: 'assets/images/ginger.png',
                    name: 'Meat & Fish',
                    borderColor: GroceryColors.greenx70,
                    backgroundColor: GroceryColors.greenx10,
                  ),
                  CategoryWidget(
                    path: 'assets/images/apple.png',
                    name: 'Beverages',
                    borderColor: GroceryColors.greenx70,
                    backgroundColor: GroceryColors.greenx10,
                  ),
                ],
              ),
            ),
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
